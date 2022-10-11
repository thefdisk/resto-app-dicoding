import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class RestaurantLoadingCardWidget extends StatelessWidget {
  const RestaurantLoadingCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      itemBuilder: (context, index) => SkeletonLine(
        style: SkeletonLineStyle(
          height: 120,
          width: double.infinity,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: 3,
    );
  }
}
