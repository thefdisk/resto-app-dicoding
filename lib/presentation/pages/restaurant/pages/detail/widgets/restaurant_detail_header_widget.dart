import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:skeletons/skeletons.dart';

class RestaurantDetailHeaderWidget extends StatelessWidget {
  const RestaurantDetailHeaderWidget({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: restaurant.imageUrlLarge,
            imageBuilder: (context, image) => Hero(
              tag: restaurant.pictureId.getOrCrash(),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            placeholder: (context, url) => const SkeletonLine(
              style: SkeletonLineStyle(
                height: 200,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                color: Theme.of(context).canvasColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    restaurant.name.getOrElse(''),
                    style: AppTypography(context).heading2,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 16,
                        color: ColorName.primaryYellow700,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        restaurant.rating.getOrElse(0).toString(),
                        style: AppTypography(context).subtitle2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
