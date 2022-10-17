import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_favorite_actor/restaurant_favorite_actor_bloc.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_card_widget.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourites',
          style: AppTypography(context).heading2,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<RestaurantFavoriteActorBloc,
          RestaurantFavoriteActorState>(
        builder: (context, state) {
          return state.failureOption.fold(
            () {
              final restaurants = state.restaurants;

              if (restaurants.isEmpty()) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.favorite,
                        size: 50,
                        color: ColorName.primaryYellow700,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Belum ada restaurant favorit. Yuk dipilih dulu',
                        style: AppTypography(context).body2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }

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
            (f) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error,
                    size: 50,
                    color: ColorName.alertNegativeRed,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Terjadi kesalahan',
                    style: AppTypography(context).body2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
