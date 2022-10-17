import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/data_sources/local_data_provider.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/data_sources/remote_data_provider.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/restaurant_dtos.dart';

@Injectable(as: IRestaurantRepository)
class RestaurantRepository implements IRestaurantRepository {
  final RestaurantRemoteDataProvider _remoteDataProvider;

  RestaurantRepository(this._remoteDataProvider);

  @override
  Future<Either<RestaurantFailure, KtList<Restaurant>>> getRestaurants() async {
    try {
      final result = await _remoteDataProvider.fetchRestaurants();

      if (result.hasError) {
        return left(result.error!);
      }

      final restaurants = result.data!
          .map((restaurant) => restaurant.toDomain())
          .toImmutableList();

      return right(restaurants);
    } catch (e, s) {
      log(
        'getRestaurants',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }

  @override
  Future<Either<RestaurantFailure, Restaurant>> getDetailRestaurant({
    required GeneratedId restaurantId,
  }) async {
    try {
      final result = await _remoteDataProvider.fetchDetailRestaurant(
        restaurantId: restaurantId.getOrCrash(),
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final restaurant = result.data!.toDomain();

      return right(restaurant);
    } catch (e, s) {
      log(
        'getDetailRestaurants',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }

  @override
  Future<Either<RestaurantFailure, KtList<Restaurant>>> searchRestaurants({
    required StringSingleLine keyword,
  }) async {
    try {
      final result = await _remoteDataProvider.searchRestaurants(
        keyword: keyword.getOrCrash(),
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final restaurants = result.data!
          .map((restaurant) => restaurant.toDomain())
          .toImmutableList();

      return right(restaurants);
    } catch (e, s) {
      log(
        'searchRestaurants',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> addRestaurantReview({
    required GeneratedId restaurantId,
    required StringSingleLine name,
    required StringSingleLine review,
  }) async {
    try {
      final result = await _remoteDataProvider.postRestaurantReview(
        restaurantId: restaurantId.getOrCrash(),
        name: name.getOrCrash(),
        review: review.getOrCrash(),
      );

      if (result.hasError) {
        return left(result.error!);
      }

      return right(unit);
    } catch (e, s) {
      log(
        'addReviewRestaurants',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }

  @override
  Future<Either<RestaurantFailure, KtList<Restaurant>>>
      getRestaurantFavourites() async {
    try {
      final result =
          await RestaurantLocalDataProvider.instance.getRestaurantFavourites();

      if (result.hasError) {
        return left(result.error!);
      }

      final restaurants = result.data!
          .map((restaurant) => restaurant.toDomain())
          .toImmutableList();

      return right(restaurants);
    } catch (e, s) {
      log(
        'getRestaurantFavourites',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> addRestaurantFavorite({
    required Restaurant restaurant,
  }) async {
    try {
      final restaurantDto = RestaurantDto.fromDomain(restaurant);

      final result = await RestaurantLocalDataProvider.instance
          .insertRestaurantFavorite(restaurantDto);

      if (result.hasError) {
        return left(result.error!);
      }

      return right(unit);
    } catch (e, s) {
      log(
        'insertRestaurantFavorite',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }

  @override
  Future<Either<RestaurantFailure, Unit>> deleteRestaurantFavorite({
    required GeneratedId restaurantId,
  }) async {
    try {
      final result =
          await RestaurantLocalDataProvider.instance.deleteRestaurantFavorite(
        restaurantId.getOrCrash(),
      );

      if (result.hasError) {
        return left(result.error!);
      }

      return right(unit);
    } catch (e, s) {
      log(
        'deleteRestaurantFavorite',
        name: 'RestaurantRepository',
        error: e,
        stackTrace: s,
      );

      return left(const RestaurantFailure.unexpectedError());
    }
  }
}
