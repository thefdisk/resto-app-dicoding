import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data_channel/data_channel.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/common/api/api_client.dart';
import 'package:resto_app_dicoding/common/api/api_failure.dart';
import 'package:resto_app_dicoding/common/urls/api_path.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/restaurant_dtos.dart';

@injectable
class RestaurantRemoteDataProvider {
  final ApiClient _apiClient;

  RestaurantRemoteDataProvider(this._apiClient);

  Future<DC<RestaurantFailure, List<RestaurantDto>>> fetchRestaurants() async {
    try {
      final response = await _apiClient.get(
        ApiPath.getRestaurants,
      );

      if (response.statusCode != 200) {
        return DC.error(const RestaurantFailure.fetchError());
      }

      final dtos = (response.data['restaurants'] as List)
          .map((json) => RestaurantDto.fromJson(json))
          .toList();

      return DC.data(dtos);
    } on ApiFailure catch (e, s) {
      log(
        'fetchRestaurants',
        name: 'RestaurantRemoteDataProvider',
        error: e,
        stackTrace: s,
      );

      return DC.error(RestaurantFailure.serverError(e));
    }
  }

  Future<DC<RestaurantFailure, RestaurantDto>> fetchDetailRestaurant({
    required String restaurantId,
  }) async {
    try {
      final response = await _apiClient.get(
        '${ApiPath.getDetailRestaurant}/$restaurantId',
      );

      if (response.statusCode != 200) {
        return DC.error(const RestaurantFailure.fetchError());
      }

      final dto = RestaurantDto.fromJson(response.data['restaurant']);

      return DC.data(dto);
    } on ApiFailure catch (e, s) {
      log(
        'fetchDetailRestaurants',
        name: 'RestaurantRemoteDataProvider',
        error: e,
        stackTrace: s,
      );

      return DC.error(RestaurantFailure.serverError(e));
    }
  }

  Future<DC<RestaurantFailure, List<RestaurantDto>>> searchRestaurants({
    required String keyword,
  }) async {
    try {
      final response = await _apiClient.get(
        ApiPath.searchRestaurants,
        params: {
          'q': keyword,
        },
      );

      if (response.statusCode != 200) {
        return DC.error(const RestaurantFailure.fetchError());
      }

      if (response.data['founded'] == 0) {
        return DC.error(const RestaurantFailure.empty());
      }

      final dtos = (response.data['restaurants'] as List)
          .map((json) => RestaurantDto.fromJson(json))
          .toList();

      return DC.data(dtos);
    } on ApiFailure catch (e, s) {
      log(
        'searchRestaurants',
        name: 'RestaurantRemoteDataProvider',
        error: e,
        stackTrace: s,
      );

      return DC.error(RestaurantFailure.serverError(e));
    }
  }

  Future<DC<RestaurantFailure, Unit>> postRestaurantReview({
    required String restaurantId,
    required String name,
    required String review,
  }) async {
    try {
      final response = await _apiClient.post(
        ApiPath.postReview,
        data: {
          'id': restaurantId,
          'name': name,
          'review': review,
        },
      );

      if (response.statusCode != 201) {
        return DC.error(const RestaurantFailure.fetchError());
      }

      if (response.data['error'] == true) {
        return DC.error(const RestaurantFailure.failedToAddReview());
      }

      return DC.data(unit);
    } on ApiFailure catch (e, s) {
      log(
        'postReviewRestaurants',
        name: 'RestaurantRemoteDataProvider',
        error: e,
        stackTrace: s,
      );

      return DC.error(RestaurantFailure.serverError(e));
    }
  }
}
