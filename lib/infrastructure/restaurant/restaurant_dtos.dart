import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/domain/restaurant/value_objects.dart';

part 'restaurant_dtos.freezed.dart';
part 'restaurant_dtos.g.dart';
part 'category_dtos.dart';
part 'menu_dtos.dart';
part 'review_dtos.dart';

@freezed
class RestaurantDto with _$RestaurantDto {
  const RestaurantDto._();
  const factory RestaurantDto({
    @JsonKey(name: 'id') required String restaurantId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'pictureId') required String pictureId,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'rating') required double rating,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'categories') List<CategoryDto>? categories,
    @JsonKey(name: 'menus') MenuDto? menus,
    @JsonKey(name: 'customerReviews') List<ReviewDto>? reviews,
  }) = _RestaurantDto;

  factory RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDtoFromJson(json);

  Restaurant toDomain() => Restaurant(
        restaurantId: GeneratedId(restaurantId),
        name: RestaurantName(name),
        description: RestaurantDescription(description),
        city: RestaurantCity(city),
        address: RestaurantAddress(address ?? ''),
        pictureId: NumericId(pictureId),
        categories: categories
                ?.map((category) => category.toDomain())
                .toImmutableList() ??
            const KtList.empty(),
        menus: menus?.toDomain() ?? RestaurantMenu.empty(),
        rating: Nominal(rating),
        reviews:
            reviews?.map((review) => review.toDomain()).toImmutableList() ??
                const KtList.empty(),
      );

  factory RestaurantDto.fromDomain(Restaurant restaurant) => RestaurantDto(
        restaurantId: restaurant.restaurantId.getOrCrash(),
        name: restaurant.name.getOrCrash(),
        description: restaurant.description.getOrCrash(),
        pictureId: restaurant.pictureId.getOrCrash(),
        city: restaurant.city.getOrCrash(),
        rating: restaurant.rating.getOrCrash().toDouble(),
      );
}
