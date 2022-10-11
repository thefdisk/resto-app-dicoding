import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_loader/restaurant_loader_bloc.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_card_widget.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_loading_card_widget.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class MainPage extends StatelessWidget implements AutoRouteWrapper {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Restaurant App',
          style: AppTypography(context).heading2,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => context.pushRoute(const RestaurantSearchRoute()),
            icon: const Icon(
              Icons.search,
              color: ColorName.primaryYellow700,
            ),
          ),
        ],
      ),
      body: BlocBuilder<RestaurantLoaderBloc, RestaurantLoaderState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const RestaurantLoadingCardWidget(),
            loadFailure: (f) => f.failure.maybeMap(
              orElse: () => const SizedBox(),
              serverError: (value) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      value.failure.toStringFormatted(),
                      style: AppTypography(context).body2,
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => context
                          .read<RestaurantLoaderBloc>()
                          .add(const RestaurantLoaderEvent.fetched()),
                      child: const Text('Coba lagi'),
                    ),
                  ],
                ),
              ),
            ),
            loadSuccess: (state) {
              final restaurants = state.restaurants;

              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                itemCount: restaurants.size,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index];

                  return RestaurantCardWidget(
                    onTap: () => context.pushRoute(
                      RestaurantDetailRoute(
                        restaurantId: restaurant.restaurantId,
                      ),
                    ),
                    restaurant: restaurant,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<RestaurantLoaderBloc>()
          ..add(
            const RestaurantLoaderEvent.fetched(),
          ),
        child: this,
      );
}
