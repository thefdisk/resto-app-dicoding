part of 'restaurant_review_form_bloc.dart';

@freezed
class RestaurantReviewFormEvent with _$RestaurantReviewFormEvent {
  const factory RestaurantReviewFormEvent.nameChanged(String name) =
      _NameChanged;
  const factory RestaurantReviewFormEvent.reviewChanged(String review) =
      _ReviewChanged;
  const factory RestaurantReviewFormEvent.submitted() = _Submitted;
}
