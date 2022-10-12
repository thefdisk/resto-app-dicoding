import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class RestaurantDetailLoadingWidget extends StatelessWidget {
  const RestaurantDetailLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        const SkeletonAvatar(
          style: SkeletonAvatarStyle(
            width: double.infinity,
            height: 200,
          ),
        ),
        const SizedBox(height: 12),
        SkeletonParagraph(
          style: SkeletonParagraphStyle(
            lines: 10,
            spacing: 6,
            lineStyle: SkeletonLineStyle(
              randomLength: true,
              height: 30,
              borderRadius: BorderRadius.circular(8),
              minLength: MediaQuery.of(context).size.width / 2,
            ),
          ),
        ),
      ],
    );
  }
}
