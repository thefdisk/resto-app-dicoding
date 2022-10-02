part of 'restaurant.dart';

@freezed
class RestaurantCategory with _$RestaurantCategory {
  const RestaurantCategory._();
  const factory RestaurantCategory({
    required StringSingleLine name,
  }) = _RestaurantCategory;

  factory RestaurantCategory.empty() => RestaurantCategory(
        name: StringSingleLine(''),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}
