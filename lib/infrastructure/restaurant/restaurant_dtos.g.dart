// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestaurantDto _$$_RestaurantDtoFromJson(Map<String, dynamic> json) =>
    _$_RestaurantDto(
      restaurantId: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      pictureId: json['pictureId'] as String,
      city: json['city'] as String,
      rating: (json['rating'] as num).toDouble(),
      address: json['address'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      menus: json['menus'] == null
          ? null
          : MenuDto.fromJson(json['menus'] as Map<String, dynamic>),
      reviews: (json['customerReviews'] as List<dynamic>?)
          ?.map((e) => ReviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RestaurantDtoToJson(_$_RestaurantDto instance) =>
    <String, dynamic>{
      'id': instance.restaurantId,
      'name': instance.name,
      'description': instance.description,
      'pictureId': instance.pictureId,
      'city': instance.city,
      'rating': instance.rating,
      'address': instance.address,
      'categories': instance.categories,
      'menus': instance.menus,
      'customerReviews': instance.reviews,
    };

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_MenuDto _$$_MenuDtoFromJson(Map<String, dynamic> json) => _$_MenuDto(
      foods: (json['foods'] as List<dynamic>)
          .map((e) => FoodDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      drinks: (json['drinks'] as List<dynamic>)
          .map((e) => DrinkDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MenuDtoToJson(_$_MenuDto instance) =>
    <String, dynamic>{
      'foods': instance.foods,
      'drinks': instance.drinks,
    };

_$_FoodDto _$$_FoodDtoFromJson(Map<String, dynamic> json) => _$_FoodDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_FoodDtoToJson(_$_FoodDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_DrinkDto _$$_DrinkDtoFromJson(Map<String, dynamic> json) => _$_DrinkDto(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_DrinkDtoToJson(_$_DrinkDto instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_ReviewDto _$$_ReviewDtoFromJson(Map<String, dynamic> json) => _$_ReviewDto(
      name: json['name'] as String,
      review: json['review'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_ReviewDtoToJson(_$_ReviewDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'review': instance.review,
      'date': instance.date,
    };
