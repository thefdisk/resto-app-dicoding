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
    on<RestaurantReviewFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
