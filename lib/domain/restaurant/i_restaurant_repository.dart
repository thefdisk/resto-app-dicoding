import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

abstract class IRestaurantRepository {
  Future<Either<RestaurantFailure, KtList<Restaurant>>> getRestaurants();
  Future<Either<RestaurantFailure, Restaurant>> getDetailRestaurant({
    required GeneratedId restaurantId,
  });
  Future<Either<RestaurantFailure, KtList<Restaurant>>> searchRestaurants({
    required StringSingleLine keyword,
  });
  Future<Either<RestaurantFailure, Unit>> addRestaurantReview({
    required StringSingleLine name,
    required StringSingleLine review,
  });
}
