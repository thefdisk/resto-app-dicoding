import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_detail_loader/restaurant_detail_loader_bloc.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/injection.dart';

class RestaurantDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const RestaurantDetailPage({
    super.key,
    required this.restaurantId,
  });

  final GeneratedId restaurantId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body:
          BlocBuilder<RestaurantDetailLoaderBloc, RestaurantDetailLoaderState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => const SizedBox(),
            loadSuccess: (state) {
              final restaurant = state.restaurant;

              return Center(
                child: Text(restaurant.name.getOrCrash()),
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<RestaurantDetailLoaderBloc>()
          ..add(
            RestaurantDetailLoaderEvent.fetched(restaurantId),
          ),
        child: this,
      );
}
