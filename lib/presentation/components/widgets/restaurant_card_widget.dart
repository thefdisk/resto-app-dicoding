import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/restaurant_button_favorite_widget.dart';
import 'package:skeletons/skeletons.dart';

class RestaurantCardWidget extends StatelessWidget {
  const RestaurantCardWidget({
    Key? key,
    required this.restaurant,
    required this.onTap,
  }) : super(key: key);

  final Restaurant restaurant;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap.call,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorName.accentContainerGrey,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
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
              placeholder: (context, url) => const SkeletonLine(
                style: SkeletonLineStyle(
                  height: 100,
                  width: 100,
                ),
              ),
              errorWidget: (context, url, error) => const Center(
                child: Icon(
                  Icons.error,
                  size: 24,
                  color: ColorName.alertNegativeRed,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name.getOrCrash(),
                    style: AppTypography(context).subtitle1,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        restaurant.city.getOrCrash(),
                        style: AppTypography(context).subtitle2,
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: ColorName.primaryYellow700,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        restaurant.rating.getOrElse(0).toString(),
                        style: AppTypography(context).subtitle2,
                      ),
                    ],
                  )
                ],
              ),
            ),
            RestaurantButtonFavoriteWidget(restaurant: restaurant),
          ],
        ),
      ),
    );
  }
}
