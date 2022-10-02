import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

part 'restaurant_search_loader_event.dart';
part 'restaurant_search_loader_state.dart';
part 'restaurant_search_loader_bloc.freezed.dart';

@injectable
class RestaurantSearchLoaderBloc
    extends Bloc<RestaurantSearchLoaderEvent, RestaurantSearchLoaderState> {
  final IRestaurantRepository _restaurantRepository;

  RestaurantSearchLoaderBloc(this._restaurantRepository)
      : super(const RestaurantSearchLoaderState.initial()) {
    on<RestaurantSearchLoaderEvent>(_onRestaurantSearchLoaderEvent);
  }

  Future<void> _onRestaurantSearchLoaderEvent(
    RestaurantSearchLoaderEvent event,
    Emitter<RestaurantSearchLoaderState> emit,
  ) {
    return event.map(
      keywordChanged: (e) async {
        final keyword = StringSingleLine(e.keyword);

        if (keyword.isValid()) {
          emit(const RestaurantSearchLoaderState.loadInProgress());

          final failureOrSuccess =
              await _restaurantRepository.searchRestaurants(keyword: keyword);

          emit(
            failureOrSuccess.fold(
              (f) => RestaurantSearchLoaderState.loadFailure(f),
              (restaurants) =>
                  RestaurantSearchLoaderState.loadSuccess(restaurants),
            ),
          );
        }
      },
    );
  }
}
