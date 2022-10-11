import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_search_loader/restaurant_search_loader_bloc.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/text_fields/search_form_field.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_card_widget.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_loading_card_widget.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class RestaurantSearchPage extends StatelessWidget implements AutoRouteWrapper {
  const RestaurantSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search restaurants',
          style: AppTypography(context).heading2,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: SearchFormField(
              onChanged: (value) => context
                  .read<RestaurantSearchLoaderBloc>()
                  .add(RestaurantSearchLoaderEvent.keywordChanged(value)),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: BlocBuilder<RestaurantSearchLoaderBloc,
                RestaurantSearchLoaderState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const SizedBox(),
                  loadInProgress: (_) => const RestaurantLoadingCardWidget(),
                  loadFailure: (f) => f.failure.maybeMap(
                    orElse: () => const SizedBox(),
                    empty: (_) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.sentiment_dissatisfied,
                          size: 50,
                          color: ColorName.primaryYellow700,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Maaf, tidak ada hasil yang ditemukan.',
                          style: AppTypography(context).body2,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    serverError: (value) => Center(
                      child: Text(
                        value.failure.toStringFormatted(),
                        style: AppTypography(context).body2,
                      ),
                    ),
                  ),
                  loadSuccess: (state) {
                    final restaurants = state.restaurants;

                    return ListView.separated(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      shrinkWrap: true,
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
          )
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<RestaurantSearchLoaderBloc>(),
        child: this,
      );
}
