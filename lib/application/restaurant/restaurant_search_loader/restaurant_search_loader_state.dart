part of 'restaurant_search_loader_bloc.dart';

@freezed
class RestaurantSearchLoaderState with _$RestaurantSearchLoaderState {
  const factory RestaurantSearchLoaderState.initial() = _Initial;
  const factory RestaurantSearchLoaderState.loadInProgress() = _LoadInProgress;
  const factory RestaurantSearchLoaderState.loadFailure(
      RestaurantFailure failure) = _LoadFailure;
  const factory RestaurantSearchLoaderState.loadSuccess(
      KtList<Restaurant> restaurants) = _LoadSuccess;
}
