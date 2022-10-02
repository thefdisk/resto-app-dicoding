import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_loader/restaurant_loader_bloc.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class MainPage extends StatelessWidget implements AutoRouteWrapper {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('restaurant'),
        actions: [
          GestureDetector(
            onTap: () => context.pushRoute(const RestaurantSearchRoute()),
            child: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: BlocBuilder<RestaurantLoaderBloc, RestaurantLoaderState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loadInProgress: (_) => const SizedBox(),
            loadFailure: (_) => const SizedBox(),
            loadSuccess: (state) {
              final restaurants = state.restaurants;

              return ListView.builder(
                itemCount: restaurants.size,
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index];

                  return GestureDetector(
                    onTap: () => context.pushRoute(
                      RestaurantDetailRoute(
                        restaurantId: restaurant.restaurantId,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: ColorName.accentContainerGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          CachedNetworkImage(
                            imageUrl: restaurant.imageUrlMedium,
                            imageBuilder: (context, image) => Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurant.name.getOrCrash(),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(Icons.location_on_outlined),
                                  const SizedBox(width: 8),
                                  Text(restaurant.city.getOrCrash())
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(Icons.star),
                                  const SizedBox(width: 8),
                                  Text(restaurant.rating
                                      .getOrElse(0)
                                      .toString()),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
