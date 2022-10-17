import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_detail_loader/restaurant_detail_loader_bloc.dart';
import 'package:resto_app_dicoding/domain/core/value_objects.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/bottom_sheet/restaurant_review_bottom_sheet.dart';
import 'package:resto_app_dicoding/presentation/components/failure/restaurant_failure_widget.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_button_favorite_widget.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

import 'widgets/restaurant_detail_header_widget.dart';
import 'widgets/restaurant_detail_loading_widget.dart';

class RestaurantDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const RestaurantDetailPage({
    super.key,
    required this.restaurantId,
  });

  final GeneratedId restaurantId;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        RestaurantMenusRoute(),
        RestaurantDescriptionRoute(),
        RestaurantReviewsRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Detail Restaurant',
              style: AppTypography(context).heading2,
            ),
            centerTitle: true,
            actions: [
              BlocBuilder<RestaurantDetailLoaderBloc,
                  RestaurantDetailLoaderState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox(),
                    loadSuccess: (state) => Row(
                      children: [
                        IconButton(
                          onPressed: () => showReviewRestaurantBottomSheet(
                            context,
                            restaurant: state.restaurant,
                          ).then(
                            /// Jika review sukses maka akan merefresh detail restaurant
                            /// untuk mendapatkan data review yang terbaru.
                            (value) => value != null && value
                                ? context
                                    .read<RestaurantDetailLoaderBloc>()
                                    .add(RestaurantDetailLoaderEvent.fetched(
                                      restaurantId,
                                    ))
                                : null,
                          ),
                          icon: const Icon(
                            Icons.rate_review_outlined,
                            color: ColorName.primaryYellow700,
                          ),
                        ),
                        RestaurantButtonFavoriteWidget(
                          restaurant: state.restaurant,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: BlocBuilder<RestaurantDetailLoaderBloc,
              RestaurantDetailLoaderState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const SizedBox(),
                loadInProgress: (_) => const RestaurantDetailLoadingWidget(),
                loadFailure: (f) => RestaurantFailureWidget(
                  failure: f.failure,
                  onPressed: () => context
                      .read<RestaurantDetailLoaderBloc>()
                      .add(RestaurantDetailLoaderEvent.fetched(restaurantId)),
                ),
                loadSuccess: (state) {
                  final restaurant = state.restaurant;

                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RestaurantDetailHeaderWidget(restaurant: restaurant),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${restaurant.address.getOrElse('')}, ${restaurant.city.getOrElse('')}',
                              style: AppTypography(context).body2,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Category :',
                                  style: AppTypography(context).body2,
                                ),
                                for (var category in restaurant.categories.iter)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 2,
                                      horizontal: 4,
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    decoration: BoxDecoration(
                                      color: ColorName.alertOffGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      category.name.getOrCrash(),
                                      style: AppTypography(context)
                                          .subtitle2
                                          .copyWith(
                                            color: ColorName.textSecondaryGrey,
                                          ),
                                    ),
                                  ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            TabBar(
                              controller: tabController,
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorName.accentContainerGrey,
                                border: Border.all(
                                  color: ColorName.primaryYellow700,
                                ),
                              ),
                              labelStyle: AppTypography(context).body2,
                              tabs: const [
                                Tab(
                                  text: 'Menus',
                                ),
                                Tab(
                                  text: 'Description',
                                ),
                                Tab(
                                  text: 'Reviews',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: child),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
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
