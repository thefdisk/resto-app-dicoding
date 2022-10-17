import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_favorite_actor/restaurant_favorite_actor_bloc.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';

class RestaurantButtonFavoriteWidget extends StatelessWidget {
  const RestaurantButtonFavoriteWidget({
    Key? key,
    required this.restaurant,
    this.size,
    this.padding,
  }) : super(key: key);

  final Restaurant restaurant;
  final double? size;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantFavoriteActorBloc,
        RestaurantFavoriteActorState>(
      builder: (context, state) {
        final restaurantSelected = state.restaurants.find(
          (resto) => resto.restaurantId == restaurant.restaurantId,
        );

        final isFavorite = restaurantSelected != null;

        return IconButton(
          padding: EdgeInsets.all(padding ?? 8),
          onPressed: () => isFavorite
              ? context.read<RestaurantFavoriteActorBloc>().add(
                  RestaurantFavoriteActorEvent.deleted(restaurant.restaurantId))
              : context
                  .read<RestaurantFavoriteActorBloc>()
                  .add(RestaurantFavoriteActorEvent.added(restaurant)),
          icon: Icon(
            Icons.favorite,
            color: isFavorite ? Colors.red : null,
            size: size,
          ),
        );
      },
    );
  }
}
