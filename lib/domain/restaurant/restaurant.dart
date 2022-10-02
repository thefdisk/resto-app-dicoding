import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/core/failures.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/value_objects.dart';

part 'restaurant.freezed.dart';
part 'category.dart';
part 'menu.dart';
part 'review.dart';

@freezed
class Restaurant with _$Restaurant {
  const Restaurant._();
  const factory Restaurant({
    required GeneratedId restaurantId,
    required RestaurantName name,
    required RestaurantDescription description,
    required RestaurantCity city,
    required RestaurantAddress address,
    required NumericId pictureId,
    required KtList<RestaurantCategory> categories,
    required RestaurantMenu menus,
    required Nominal rating,
    required KtList<RestaurantReview> reviews,
  }) = _Restaurant;

  factory Restaurant.empty() => Restaurant(
        restaurantId: GeneratedId(''),
        name: RestaurantName(''),
        description: RestaurantDescription(''),
        city: RestaurantCity(''),
        address: RestaurantAddress(''),
        pictureId: NumericId(''),
        categories: const KtList.empty(),
        menus: RestaurantMenu.empty(),
        rating: Nominal(0),
        reviews: const KtList.empty(),
      );

  String get imageUrlLarge =>
      'https://restaurant-api.dicoding.dev/images/large/${pictureId.getOrCrash()}';
  String get imageUrlMedium =>
      'https://restaurant-api.dicoding.dev/images/medium/${pictureId.getOrCrash()}';
  String get imageUrlSmall =>
      'https://restaurant-api.dicoding.dev/images/small/${pictureId.getOrCrash()}';

  Option<ValueFailure<dynamic>> get failureOption => restaurantId.failureOrUnit
      .andThen(name.failureOrUnit)
      .andThen(description.failureOrUnit)
      .andThen(pictureId.failureOrUnit)
      .andThen(city.failureOrUnit)
      .andThen(rating.failureOrUnit)
      .fold(
        (f) => some(f),
        (_) => none(),
      );
}
