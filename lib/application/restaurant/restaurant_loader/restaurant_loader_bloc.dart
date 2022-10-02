import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

part 'restaurant_loader_event.dart';
part 'restaurant_loader_state.dart';
part 'restaurant_loader_bloc.freezed.dart';

@injectable
class RestaurantLoaderBloc
    extends Bloc<RestaurantLoaderEvent, RestaurantLoaderState> {
  final IRestaurantRepository _restaurantRepository;

  RestaurantLoaderBloc(this._restaurantRepository)
      : super(const RestaurantLoaderState.initial()) {
    on<RestaurantLoaderEvent>(_onRestaurantLoaderEvent);
  }

  Future<void> _onRestaurantLoaderEvent(
    RestaurantLoaderEvent event,
    Emitter<RestaurantLoaderState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        emit(const RestaurantLoaderState.loadInProgress());

        final failureOrSuccess = await _restaurantRepository.getRestaurants();

        emit(
          failureOrSuccess.fold(
            (f) => RestaurantLoaderState.loadFailure(f),
            (restaurants) => RestaurantLoaderState.loadSuccess(restaurants),
          ),
        );
      },
    );
  }
}
