part of 'restaurant_review_form_bloc.dart';

@freezed
class RestaurantReviewFormState with _$RestaurantReviewFormState {
  const factory RestaurantReviewFormState({
    required GeneratedId restaurantId,
    required StringSingleLine name,
    required StringSingleLine review,
    required Option<Either<RestaurantFailure, Unit>> failureOrUnitOption,
    @Default(false) bool isSubmitting,
  }) = _RestaurantReviewFormState;

  factory RestaurantReviewFormState.initial() => RestaurantReviewFormState(
        restaurantId: GeneratedId(''),
        name: StringSingleLine(''),
        review: StringSingleLine(''),
        failureOrUnitOption: none(),
      );
}
