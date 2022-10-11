import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:resto_app_dicoding/application/restaurant/restaurant_review_form/restaurant_review_form_bloc.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant.dart';
import 'package:resto_app_dicoding/injection.dart';
import 'package:resto_app_dicoding/presentation/components/buttons/elevated_button.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';
import 'package:resto_app_dicoding/presentation/components/text_fields/text_form_field.dart';

Future<bool?> showReviewRestaurantBottomSheet(
  BuildContext context, {
  required Restaurant restaurant,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(24),
      ),
    ),
    backgroundColor: ColorName.accentContainerGrey,
    builder: (context) {
      return BlocProvider(
        create: (context) => getIt<RestaurantReviewFormBloc>()
          ..add(
            RestaurantReviewFormEvent.restaurantIdChanged(
              restaurant.restaurantId,
            ),
          ),
        child: MultiBlocListener(
          listeners: [
            BlocListener<RestaurantReviewFormBloc, RestaurantReviewFormState>(
              listenWhen: (p, c) => p.isSubmitting != c.isSubmitting,
              listener: (context, state) {
                if (state.isSubmitting) {
                  context.loaderOverlay.show();
                } else {
                  context.loaderOverlay.hide();
                }
              },
            ),
            BlocListener<RestaurantReviewFormBloc, RestaurantReviewFormState>(
              listenWhen: (p, c) =>
                  p.failureOrUnitOption != c.failureOrUnitOption,
              listener: (context, state) {
                state.failureOrUnitOption.fold(
                  () {},
                  (either) => either.fold(
                    (f) => f.maybeMap(
                      orElse: () {},
                      serverError: (value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              value.failure.toStringFormatted(),
                              style: AppTypography(context).body1,
                            ),
                            backgroundColor: ColorName.alertNegativeRed,
                          ),
                        );
                        context.popRoute();
                      },
                      failedToAddReview: (value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Terjadi kesalahan',
                              style: AppTypography(context).body1,
                            ),
                            backgroundColor: ColorName.alertNegativeRed,
                          ),
                        );
                        context.popRoute();
                      },
                    ),
                    (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Terima kasih! Review kamu sudah dikirim.',
                            style: AppTypography(context).body1,
                          ),
                          backgroundColor: ColorName.accentCardGrey,
                        ),
                      );

                      context.popRoute(true);
                    },
                  ),
                );
              },
            ),
          ],
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 4,
                      width: 80,
                      margin: const EdgeInsets.only(
                        bottom: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorName.accentLineGrey,
                      ),
                      alignment: Alignment.center,
                    ),
                    Text(
                      'Berikan review mu tentang restorannya',
                      style: AppTypography(context).heading2,
                    ),
                    const SizedBox(height: 8),
                    BlocBuilder<RestaurantReviewFormBloc,
                        RestaurantReviewFormState>(
                      builder: (context, state) {
                        return AppTextFormField(
                          title: 'Nama :',
                          onChanged: (value) => context
                              .read<RestaurantReviewFormBloc>()
                              .add(
                                  RestaurantReviewFormEvent.nameChanged(value)),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    BlocBuilder<RestaurantReviewFormBloc,
                        RestaurantReviewFormState>(
                      builder: (context, state) {
                        return AppTextFormField(
                          title: 'Bagaimana pengalamanmu?',
                          maxLines: 5,
                          onChanged: (value) => context
                              .read<RestaurantReviewFormBloc>()
                              .add(RestaurantReviewFormEvent.reviewChanged(
                                  value)),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<RestaurantReviewFormBloc,
                        RestaurantReviewFormState>(
                      builder: (context, state) {
                        final nameValid = state.name.isValid();
                        final reviewValid = state.review.isValid();

                        return AppElevatedButton(
                          onPressed: nameValid && reviewValid
                              ? () => context
                                  .read<RestaurantReviewFormBloc>()
                                  .add(const RestaurantReviewFormEvent
                                      .submitted())
                              : null,
                          child: const Text('Kirim'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
