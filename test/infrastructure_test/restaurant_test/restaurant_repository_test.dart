import 'package:data_channel/data_channel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/data_sources/remote_data_provider.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/restaurant_dtos.dart';
import 'package:resto_app_dicoding/infrastructure/restaurant/restaurant_repository.dart';

import 'restaurant_repository_test.mocks.dart';

@GenerateMocks([RestaurantRemoteDataProvider])
void main() {
  late MockRestaurantRemoteDataProvider mockRestaurantRemoteDataProvider;
  late RestaurantRepository sut; //sut => System Under Test

  setUp(
    () {
      mockRestaurantRemoteDataProvider = MockRestaurantRemoteDataProvider();
      sut = RestaurantRepository(mockRestaurantRemoteDataProvider);
    },
  );

  group(
    'loadRestaurants',
    () {
      const restaurants = [
        RestaurantDto(
          restaurantId: 'qwerqwe',
          name: 'Resto 1',
          description: 'description',
          pictureId: 'qwrq1231',
          city: 'city',
          rating: 4.0,
        ),
        RestaurantDto(
          restaurantId: 'qwerqwe2',
          name: 'Resto 2',
          description: 'description',
          pictureId: 'qwrq12312',
          city: 'city',
          rating: 4.0,
        ),
        RestaurantDto(
          restaurantId: 'qwerqwe3',
          name: 'Resto 3',
          description: 'description',
          pictureId: 'qwrq12313',
          city: 'city',
          rating: 5.0,
        ),
      ];

      void setUpMockSuccessResponse() {
        when(mockRestaurantRemoteDataProvider.fetchRestaurants()).thenAnswer(
          (_) async => DC.data(restaurants),
        );
      }

      test(
        'should using fetchRestaurants API',
        () async {
          setUpMockSuccessResponse();
          await sut.getRestaurants();
          verify(mockRestaurantRemoteDataProvider.fetchRestaurants()).called(1);
        },
      );

      test(
        'should return right data when response is success',
        () async {
          setUpMockSuccessResponse();
          final result = await sut.getRestaurants();
          expect(result.isRight(), true);
        },
      );
    },
  );

  group(
    'loadDetailRestaurant',
    () {
      const restaurant = RestaurantDto(
        restaurantId: 'qwerqwe',
        name: 'Resto 1',
        description: 'description',
        pictureId: 'qwrq1231',
        city: 'city',
        rating: 4.0,
        address: 'Jl address',
        categories: [
          CategoryDto(name: 'name'),
          CategoryDto(name: 'name'),
        ],
        menus: MenuDto(
          foods: [
            FoodDto(name: 'name'),
          ],
          drinks: [
            DrinkDto(name: 'name'),
          ],
        ),
        reviews: [
          ReviewDto(
            name: 'name',
            review: 'review',
            date: 'date',
          ),
        ],
      );

      void setUpMockSuccessResponse() {
        when(mockRestaurantRemoteDataProvider.fetchDetailRestaurant(
          restaurantId: restaurant.restaurantId,
        )).thenAnswer((_) async => DC.data(restaurant));
      }

      test(
        'should using fetchDetailRestaurant API',
        () async {
          setUpMockSuccessResponse();
          await sut.getDetailRestaurant(
            restaurantId: GeneratedId(restaurant.restaurantId),
          );
          verify(mockRestaurantRemoteDataProvider.fetchDetailRestaurant(
            restaurantId: restaurant.restaurantId,
          )).called(1);
        },
      );

      test(
        'should return right data when response is success',
        () async {
          setUpMockSuccessResponse();
          final result = await sut.getDetailRestaurant(
            restaurantId: GeneratedId(restaurant.restaurantId),
          );
          expect(result.isRight(), true);
        },
      );
    },
  );
}
