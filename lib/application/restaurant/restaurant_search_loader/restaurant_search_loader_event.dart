part of 'restaurant_search_loader_bloc.dart';

@freezed
class RestaurantSearchLoaderEvent with _$RestaurantSearchLoaderEvent {
  const factory RestaurantSearchLoaderEvent.keywordChanged(String keyword) =
      _KeywordChanged;
}
