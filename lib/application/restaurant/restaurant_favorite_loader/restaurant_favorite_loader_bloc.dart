// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kt_dart/collection.dart';
// import 'package:resto_app_dicoding/domain/restaurant/i_restaurant_repository.dart';
// import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
// import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';

// part 'restaurant_favorite_loader_event.dart';
// part 'restaurant_favorite_loader_state.dart';
// part 'restaurant_favorite_loader_bloc.freezed.dart';

// @injectable
// class RestaurantFavoriteLoaderBloc
//     extends Bloc<RestaurantFavoriteLoaderEvent, RestaurantFavoriteLoaderState> {
//   final IRestaurantRepository _restaurantRepository;

//   RestaurantFavoriteLoaderBloc(this._restaurantRepository)
//       : super(RestaurantFavoriteLoaderState.initial()) {
//     on<RestaurantFavoriteLoaderEvent>(_onRestaurantFavoriteLoaderEvent);
//   }

//   Future<void> _onRestaurantFavoriteLoaderEvent(
//     RestaurantFavoriteLoaderEvent event,
//     Emitter<RestaurantFavoriteLoaderState> emit,
//   ) {
//     return event.map(
//       fetched: (e) async {
//         final failureOrSuccess =
//             await _restaurantRepository.getRestaurantFavourites();

//         emit(
//           failureOrSuccess.fold(
//             (f) => state.copyWith(
//               failureOption: optionOf(f),
//             ),
//             (restaurants) => state.copyWith(
//               restaurants: restaurants,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
