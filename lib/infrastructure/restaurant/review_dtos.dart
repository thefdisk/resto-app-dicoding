part of 'restaurant_dtos.dart';

@freezed
class ReviewDto with _$ReviewDto {
  const ReviewDto._();
  const factory ReviewDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'review') required String review,
    @JsonKey(name: 'date') required String date,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  RestaurantReview toDomain() => RestaurantReview(
        name: StringSingleLine(name),
        review: StringSingleLine(review),
        date: StringSingleLine(date),
      );
}
