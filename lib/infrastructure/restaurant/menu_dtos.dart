part of 'restaurant_dtos.dart';

@freezed
class MenuDto with _$MenuDto {
  const MenuDto._();
  const factory MenuDto({
    @JsonKey(name: 'foods') required List<FoodDto> foods,
    @JsonKey(name: 'drinks') required List<DrinkDto> drinks,
  }) = _MenuDto;

  factory MenuDto.fromJson(Map<String, dynamic> json) =>
      _$MenuDtoFromJson(json);

  RestaurantMenu toDomain() => RestaurantMenu(
        foods: foods.map((food) => food.toDomain()).toImmutableList(),
        drinks: drinks.map((drink) => drink.toDomain()).toImmutableList(),
      );
}

@freezed
class FoodDto with _$FoodDto {
  const FoodDto._();
  const factory FoodDto({
    @JsonKey(name: 'name') required String name,
  }) = _FoodDto;

  factory FoodDto.fromJson(Map<String, dynamic> json) =>
      _$FoodDtoFromJson(json);

  Food toDomain() => Food(
        name: StringSingleLine(name),
      );
}

@freezed
class DrinkDto with _$DrinkDto {
  const DrinkDto._();
  const factory DrinkDto({
    @JsonKey(name: 'name') required String name,
  }) = _DrinkDto;

  factory DrinkDto.fromJson(Map<String, dynamic> json) =>
      _$DrinkDtoFromJson(json);

  Drink toDomain() => Drink(
        name: StringSingleLine(name),
      );
}
