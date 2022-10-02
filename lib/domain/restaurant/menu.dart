part of 'restaurant.dart';

@freezed
class RestaurantMenu with _$RestaurantMenu {
  const factory RestaurantMenu({
    required KtList<Food> foods,
    required KtList<Drink> drinks,
  }) = _RestaurantMenu;

  factory RestaurantMenu.empty() => const RestaurantMenu(
        foods: KtList.empty(),
        drinks: KtList.empty(),
      );
}

@freezed
class Food with _$Food {
  const Food._();
  const factory Food({
    required StringSingleLine name,
  }) = _Food;

  factory Food.empty() => Food(
        name: StringSingleLine(''),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}

@freezed
class Drink with _$Drink {
  const Drink._();
  const factory Drink({
    required StringSingleLine name,
  }) = _Drink;

  factory Drink.empty() => Drink(
        name: StringSingleLine(''),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit.fold(
        (f) => some(f),
        (_) => none(),
      );
}
