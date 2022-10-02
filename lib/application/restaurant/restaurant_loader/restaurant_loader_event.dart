part of 'restaurant_loader_bloc.dart';

@freezed
class RestaurantLoaderEvent with _$RestaurantLoaderEvent {
  const factory RestaurantLoaderEvent.fetched() = _Fetched;
}
