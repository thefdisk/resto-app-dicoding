import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resto_app_dicoding/common/api/api_failure.dart';

part 'restaurant_failure.freezed.dart';

@freezed
class RestaurantFailure with _$RestaurantFailure {
  const factory RestaurantFailure.serverError(ApiFailure failure) =
      _ServerError;
  const factory RestaurantFailure.fetchError() = _FetchError;
  const factory RestaurantFailure.unexpectedError() = _UnexpectedError;
  const factory RestaurantFailure.empty() = _Empty;
  const factory RestaurantFailure.failedToAddReview() = _FailedToAddReview;
}
