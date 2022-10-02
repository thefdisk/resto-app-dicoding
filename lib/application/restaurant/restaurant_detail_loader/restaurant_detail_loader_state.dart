part of 'restaurant_detail_loader_bloc.dart';

@freezed
class RestaurantDetailLoaderState with _$RestaurantDetailLoaderState {
  const factory RestaurantDetailLoaderState.initial() = _Initial;
  const factory RestaurantDetailLoaderState.loadInProgress() = _LoadInProgress;
  const factory RestaurantDetailLoaderState.loadFailure(
      RestaurantFailure failure) = _LoadFailure;
  const factory RestaurantDetailLoaderState.loadSuccess(Restaurant restaurant) =
      _LoadSuccess;
}
