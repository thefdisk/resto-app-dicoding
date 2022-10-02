part of 'restaurant_loader_bloc.dart';

@freezed
class RestaurantLoaderState with _$RestaurantLoaderState {
  const factory RestaurantLoaderState.initial() = _Initial;
  const factory RestaurantLoaderState.loadInProgress() = _LoadInProgress;
  const factory RestaurantLoaderState.loadFailure(RestaurantFailure failure) =
      _LoadFailure;
  const factory RestaurantLoaderState.loadSuccess(
      KtList<Restaurant> restaurants) = _LoadSuccess;
}
