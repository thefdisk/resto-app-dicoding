import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

part 'restaurant_detail_loader_event.dart';
part 'restaurant_detail_loader_state.dart';
part 'restaurant_detail_loader_bloc.freezed.dart';

@injectable
class RestaurantDetailLoaderBloc
    extends Bloc<RestaurantDetailLoaderEvent, RestaurantDetailLoaderState> {
  final IRestaurantRepository _restaurantRepository;

  RestaurantDetailLoaderBloc(this._restaurantRepository)
      : super(const RestaurantDetailLoaderState.initial()) {
    on<RestaurantDetailLoaderEvent>(_onRestaurantDetailLoaderEvent);
  }

  Future<void> _onRestaurantDetailLoaderEvent(
    RestaurantDetailLoaderEvent event,
    Emitter<RestaurantDetailLoaderState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        emit(const RestaurantDetailLoaderState.loadInProgress());

        final failureOrSuccess =
            await _restaurantRepository.getDetailRestaurant(
          restaurantId: e.restaurantId,
        );

        emit(
          failureOrSuccess.fold(
            (f) => RestaurantDetailLoaderState.loadFailure(f),
            (restaurant) => RestaurantDetailLoaderState.loadSuccess(restaurant),
          ),
        );
      },
    );
  }
}
