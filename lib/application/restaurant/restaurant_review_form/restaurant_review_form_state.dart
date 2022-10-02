part of 'restaurant_review_form_bloc.dart';

@freezed
class RestaurantReviewFormState with _$RestaurantReviewFormState {
  const factory RestaurantReviewFormState({
    required StringSingleLine name,
    required StringSingleLine review,
    required Option<Either<RestaurantFailure, Unit>> failureOrUnitOption,
    @Default(false) bool showErrorMessages,
    @Default(false) bool isSubmitting,
  }) = _RestaurantReviewFormState;

  factory RestaurantReviewFormState.initial() => RestaurantReviewFormState(
        name: StringSingleLine(''),
        review: StringSingleLine(''),
        failureOrUnitOption: none(),
      );
}
