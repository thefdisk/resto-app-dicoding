part of 'restaurant.dart';

@freezed
class RestaurantReview with _$RestaurantReview {
  const RestaurantReview._();
  const factory RestaurantReview({
    required StringSingleLine name,
    required StringSingleLine review,
    required StringSingleLine date,
  }) = _RestaurantReview;

  factory RestaurantReview.empty() => RestaurantReview(
        name: StringSingleLine(''),
        review: StringSingleLine(''),
        date: StringSingleLine(''),
      );

  Option<ValueFailure<dynamic>> get failureOption => name.failureOrUnit
      .andThen(review.failureOrUnit)
      .andThen(date.failureOrUnit)
      .fold(
        (f) => some(f),
        (_) => none(),
      );
}
