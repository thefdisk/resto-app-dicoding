import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_detail_loader/restaurant_detail_loader_bloc.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class RestaurantMenusPage extends StatelessWidget {
  const RestaurantMenusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantDetailLoaderBloc, RestaurantDetailLoaderState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          loadSuccess: (state) {
            final menus = state.restaurant.menus;

            return ListView(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 16,
                top: 8,
              ),
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.restaurant_menu,
                      color: ColorName.primaryYellow700,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Foods :',
                      style: AppTypography(context).body1,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: List.generate(
                    menus.foods.size,
                    (index) => Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorName.alertOffGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        menus.foods[index].name.getOrCrash(),
                        style: AppTypography(context).body2.copyWith(
                              color: ColorName.textSecondaryGrey,
                            ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.local_bar,
                      color: ColorName.primaryYellow700,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Drinks :',
                      style: AppTypography(context).body1,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: List.generate(
                    menus.drinks.size,
                    (index) => Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        color: ColorName.alertOffGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        menus.drinks[index].name.getOrCrash(),
                        style: AppTypography(context).body2.copyWith(
                              color: ColorName.textSecondaryGrey,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
