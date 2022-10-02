import 'package:resto_app_dicoding/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/core/value_validators.dart';

class RestaurantName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RestaurantName(String input) {
    return RestaurantName._(
      validateStringNotEmpty(input).flatMap(validateStringSingleLine),
    );
  }

  RestaurantName._(this.value);
}

class RestaurantDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RestaurantDescription(String input) {
    return RestaurantDescription._(
      validateStringNotEmpty(input).flatMap(validateStringSingleLine),
    );
  }

  RestaurantDescription._(this.value);
}

class RestaurantCity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RestaurantCity(String input) {
    return RestaurantCity._(
      validateStringNotEmpty(input).flatMap(validateStringSingleLine),
    );
  }

  RestaurantCity._(this.value);
}

class RestaurantAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RestaurantAddress(String input) {
    return RestaurantAddress._(
      validateStringNotEmpty(input).flatMap(validateStringSingleLine),
    );
  }

  RestaurantAddress._(this.value);
}
