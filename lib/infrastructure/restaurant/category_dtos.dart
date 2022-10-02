part of 'restaurant_dtos.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();
  const factory CategoryDto({
    @JsonKey(name: 'name') required String name,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  RestaurantCategory toDomain() => RestaurantCategory(
        name: StringSingleLine(name),
      );
}
