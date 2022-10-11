import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

part 'restaurant_review_form_event.dart';
part 'restaurant_review_form_state.dart';
part 'restaurant_review_form_bloc.freezed.dart';

@injectable
class RestaurantReviewFormBloc
    extends Bloc<RestaurantReviewFormEvent, RestaurantReviewFormState> {
  final IRestaurantRepository _restaurantRepository;

  RestaurantReviewFormBloc(this._restaurantRepository)
      : super(RestaurantReviewFormState.initial()) {
    on<RestaurantReviewFormEvent>(_onRestaurantReviewFormEvent);
  }

  Future<void> _onRestaurantReviewFormEvent(
    RestaurantReviewFormEvent event,
    Emitter<RestaurantReviewFormState> emit,
  ) {
    return event.map(
      restaurantIdChanged: (e) async {
        emit(
          state.copyWith(
            restaurantId: e.restaurantId,
            failureOrUnitOption: none(),
          ),
        );
      },
      nameChanged: (e) async {
        emit(
          state.copyWith(
            name: StringSingleLine(e.name),
            failureOrUnitOption: none(),
          ),
        );
      },
      reviewChanged: (e) async {
        emit(
          state.copyWith(
            review: StringSingleLine(e.review),
            failureOrUnitOption: none(),
          ),
        );
      },
      submitted: (e) async {
        Either<RestaurantFailure, Unit>? failureOrSuccess;

        emit(
          state.copyWith(
            isSubmitting: true,
            failureOrUnitOption: none(),
          ),
        );

        final nameValid = state.name.isValid();
        final reviewValid = state.review.isValid();

        if (nameValid && reviewValid) {
          failureOrSuccess = await _restaurantRepository.addRestaurantReview(
            restaurantId: state.restaurantId,
            name: state.name,
            review: state.review,
          );
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            failureOrUnitOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
  }
}
