part of 'restaurant_favorite_actor_bloc.dart';

@freezed
class RestaurantFavoriteActorEvent with _$RestaurantFavoriteActorEvent {
  const factory RestaurantFavoriteActorEvent.fetched() = _Fetched;
  const factory RestaurantFavoriteActorEvent.added(Restaurant restaurant) =
      _Added;
  const factory RestaurantFavoriteActorEvent.deleted(GeneratedId restaurantId) =
      _Deleted;
}
