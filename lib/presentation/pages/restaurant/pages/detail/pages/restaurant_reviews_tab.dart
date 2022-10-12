import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_detail_loader/restaurant_detail_loader_bloc.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class RestaurantReviewsPage extends StatelessWidget {
  const RestaurantReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantDetailLoaderBloc, RestaurantDetailLoaderState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          loadSuccess: (state) {
            final reviews = state.restaurant.reviews;

            return ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: reviews.size,
              itemBuilder: (context, index) {
                final review = reviews[index];

                return Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: ColorName.accentBackgroundGrey,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorName.accentLineGrey),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              review.name.getOrElse('Tidak ada nama'),
                              style: AppTypography(context).body2,
                            ),
                          ),
                          Text(
                            review.date.getOrElse('-'),
                            style: AppTypography(context).subtitle3,
                          ),
                        ],
                      ),
                      const Divider(),
                      Text(
                        review.review.getOrElse(''),
                        style: AppTypography(context).subtitle2,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
