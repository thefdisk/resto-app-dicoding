part of 'restaurant_favorite_actor_bloc.dart';

@freezed
class RestaurantFavoriteActorState with _$RestaurantFavoriteActorState {
  const factory RestaurantFavoriteActorState({
    required KtList<Restaurant> restaurants,
    required Option<RestaurantFailure> failureOption,
  }) = _RestaurantFavoriteActorState;

  factory RestaurantFavoriteActorState.initial() =>
      RestaurantFavoriteActorState(
        restaurants: const KtList.empty(),
        failureOption: none(),
      );
}
