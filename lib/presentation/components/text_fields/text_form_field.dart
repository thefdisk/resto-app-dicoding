import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    required this.title,
    this.onChanged,
    this.maxLines,
  }) : super(key: key);

  final String title;
  final Function(String value)? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTypography(context).heading3,
        ),
        const SizedBox(height: 8),
        TextFormField(
          onChanged: onChanged,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintStyle: AppTypography(context).subtitle2,
            fillColor: ColorName.accentCardGrey,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                color: ColorName.primaryYellow700,
              ),
            ),
          ),
          style: AppTypography(context).body1,
        ),
      ],
    );
  }
}
