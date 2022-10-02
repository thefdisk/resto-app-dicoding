import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:resto_app_dicoding/common/constant/app_constant.dart';
import 'package:resto_app_dicoding/presentation/components/gen/colors.gen.dart';

class AppTypography {
  final BuildContext context;
  final Color defaultColor = ColorName.textPrimaryWhite;

  AppTypography(this.context);

  TextStyle get heading1 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 24.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 26.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 28.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get heading2 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 16.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 18.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 20.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get heading3 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 14.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 16.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 18.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get subtitle1 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 14.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 16.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 18.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get subtitle2 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 12.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 14.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 16.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get subtitle3 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 10.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 12.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 14.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get body1 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 14.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 16.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 18.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get body2 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 12.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 14.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 16.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get button1 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 16.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 18.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 20.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }

  TextStyle get button2 {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        color: defaultColor,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 14.0,
          valueWhen: const [
            Condition.largerThan(
              name: kMobile,
              value: 16.0,
            ),
            Condition.largerThan(
              name: kTablet,
              value: 18.0,
            )
          ],
        ).value,
        letterSpacing: 0,
      ),
    );
  }
}
