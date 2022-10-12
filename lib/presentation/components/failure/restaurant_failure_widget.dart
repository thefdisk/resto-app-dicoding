import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/domain/restaurant/restaurant_failure.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class RestaurantFailureWidget extends StatelessWidget {
  const RestaurantFailureWidget({
    super.key,
    required this.failure,
    required this.onPressed,
  });

  final RestaurantFailure failure;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return failure.maybeMap(
      orElse: () => const SizedBox(),
      serverError: (value) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value.failure.toStringFormatted(),
              style: AppTypography(context).body2,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => onPressed.call,
              child: const Text('Coba lagi'),
            ),
          ],
        ),
      ),
    );
  }
}
