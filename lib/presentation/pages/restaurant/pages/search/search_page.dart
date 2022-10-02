// ignore: depend_on_referenced_packages
import 'package:async/async.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_search_loader/restaurant_search_loader_bloc.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/routes/app_router.gr.dart';

class RestaurantSearchPage extends StatelessWidget implements AutoRouteWrapper {
  const RestaurantSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SearchFormField(
            onChanged: (value) => context
                .read<RestaurantSearchLoaderBloc>()
                .add(RestaurantSearchLoaderEvent.keywordChanged(value)),
          ),
          const SizedBox(height: 8),
          BlocBuilder<RestaurantSearchLoaderBloc, RestaurantSearchLoaderState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const SizedBox(),
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (_) => const SizedBox(),
                loadSuccess: (state) {
                  final restaurants = state.restaurants;

                  return ListView.builder(
                    shrinkWrap: true,
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

class SearchFormField extends StatefulWidget {
  const SearchFormField({
    super.key,
    this.onChanged,
  });

  final Function(String value)? onChanged;

  @override
  State<SearchFormField> createState() => _SearchFormFieldState();
}

class _SearchFormFieldState extends State<SearchFormField> {
  late TextEditingController _controller;
  late CancelableOperation<void> _cancelableOperation;
  final _delayedTime = const Duration(milliseconds: 1000);

  void _start() {
    _cancelableOperation = CancelableOperation.fromFuture(
      Future.delayed(_delayedTime),
      onCancel: () {
        debugPrint('Canceled');
      },
    );
  }

  _onChanged(String value) {
    _cancelableOperation.cancel();
    _start();
    if (widget.onChanged != null) {
      _cancelableOperation.value.whenComplete(() => widget.onChanged!(value));
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _start();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      onChanged: _onChanged,
    );
  }
}
