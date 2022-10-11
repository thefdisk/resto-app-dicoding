import 'package:flutter/material.dart';
import 'package:resto_app_dicoding/common/functions/app_functions.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';
import 'package:resto_app_dicoding/presentation/components/styles/typography.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed != null
          ? () {
              dismissKeyboard(context);
              onPressed?.call();
            }
          : null,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          AppTypography(context).button1,
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(double.maxFinite, 50),
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.disabled)
              ? const Color(0xFFC2C2C2)
              : ColorName.primaryYellow700;
        }),
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          return states.contains(MaterialState.disabled)
              ? ColorName.textDisabledGrey
              : ColorName.textSecondaryGrey;
        }),
      ),
      child: child,
    );
  }
}
