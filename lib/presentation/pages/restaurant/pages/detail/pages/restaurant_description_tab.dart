import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_detail_loader/restaurant_detail_loader_bloc.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/widgets/expandable_text_widget.dart';

class RestaurantDescriptionPage extends StatelessWidget {
  const RestaurantDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 16,
        top: 8,
      ),
      child:
          BlocBuilder<RestaurantDetailLoaderBloc, RestaurantDetailLoaderState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            loadSuccess: (state) {
              final restaurant = state.restaurant;
              return ExpandableTextWidget(
                text: restaurant.description.getOrElse(''),
                textStyle: AppTypography(context).subtitle2,
                readMoreTextStyle: AppTypography(context).subtitle3.copyWith(
                      color: ColorName.alertOffGrey,
                    ),
              );
            },
          );
        },
      ),
    );
  }
}
