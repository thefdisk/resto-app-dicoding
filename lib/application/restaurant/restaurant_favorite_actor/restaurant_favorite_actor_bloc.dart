import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

part 'restaurant_favorite_actor_event.dart';
part 'restaurant_favorite_actor_state.dart';
part 'restaurant_favorite_actor_bloc.freezed.dart';

@injectable
class RestaurantFavoriteActorBloc
    extends Bloc<RestaurantFavoriteActorEvent, RestaurantFavoriteActorState> {
  final IRestaurantRepository _restaurantRepository;

  RestaurantFavoriteActorBloc(this._restaurantRepository)
      : super(RestaurantFavoriteActorState.initial()) {
    on<RestaurantFavoriteActorEvent>(_onRestaurantFavoriteActorEvent);
  }

  Future<void> _onRestaurantFavoriteActorEvent(
    RestaurantFavoriteActorEvent event,
    Emitter<RestaurantFavoriteActorState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        final failureOrSuccess =
            await _restaurantRepository.getRestaurantFavourites();

        emit(
          failureOrSuccess.fold(
            (f) => state.copyWith(
              failureOption: optionOf(f),
            ),
            (restaurants) => state.copyWith(
              restaurants: restaurants,
            ),
          ),
        );
      },
      added: (e) async {
        await _restaurantRepository.addRestaurantFavorite(
          restaurant: e.restaurant,
        );

        add(const RestaurantFavoriteActorEvent.fetched());
      },
      deleted: (e) async {
        await _restaurantRepository.deleteRestaurantFavorite(
          restaurantId: e.restaurantId,
        );

        add(const RestaurantFavoriteActorEvent.fetched());
      },
    );
  }
}
