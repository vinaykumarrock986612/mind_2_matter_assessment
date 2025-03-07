import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppColors {
  AppColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.background,
    required this.secondaryBackground,
    required this.tertiaryBackground,
    required this.cardBackground,
    required this.primaryText,
    required this.secondaryText,
    required this.tertiaryText,
    required this.iconColor,
    required this.primaryDivider,
    required this.secondaryDivider,
    required this.disabledText,
    required this.backgroundAccent,
    required this.dropDownBackgroundColor,
    required this.foundationDarkDark,
    required this.disabledTextField,
    required this.blackAndWhite,
    required this.whiteAndBlack,
    required this.defaultBackgroundColor,
    required this.foundationBlueNormalBackground,
    required this.foundationButtonColor,
    required this.linkedIn,
    required this.twitter,
    required this.threads,
    required this.facebook,
  });

  final Color primary;

  final Color secondary;

  final Color tertiary;

  final Color background;

  final Color secondaryBackground;

  final Color tertiaryBackground;

  final Color backgroundAccent;

  final Color cardBackground;

  final Color primaryText;

  final Color secondaryText;

  final Color tertiaryText;

  final Color iconColor;

  final Color primaryDivider;

  final Color secondaryDivider;
  final Color disabledText;

  final Color dropDownBackgroundColor;
  final Color foundationDarkDark;
  final Color disabledTextField;

  /// In light mode it will be black, and vice versa
  final Color blackAndWhite;

  /// In Light mode it will be white, and vice versa
  final Color whiteAndBlack;

  final Color defaultBackgroundColor;

  final Color foundationBlueNormalBackground;

  final Color foundationButtonColor;

  /// PostCardColors
  final PostCardColors linkedIn;
  final PostCardColors twitter;
  final PostCardColors threads;
  final PostCardColors facebook;

  /// Common Colors
  final foundationDarkLightActive = const Color(0xff7B7F83);
  final foundationLightLightActive = const Color(0xffE0E1E3);
  final priorityHigh = const Color(0xffFB4640);
  final iosSystemGrey = const Color(0xFF8E8E93);
  final searchIconColorInHome = const Color(0xff8C97A6);

  final transparent = const Color(0x00000000);
  final black = const Color(0xFF000000);
  final grey = const Color(0xFF808080);
  final darkGrey = const Color(0xFF303030);
  final lightTextColor = const Color(0xFFF0F0F0);
  final fadedText = const Color(0xffC7C7C7);
  final lightGrey = const Color(0xFFC0C0C0);
  final white = const Color(0xFFFFFFFF);
  final red = const Color(0xFFFF0000);
  final danger = const Color(0xFFa53428);
  final orange = const Color(0xFFffb340);
  final yellow = const Color(0xffffff00);
  final green = const Color(0xff00ff00);
  final peruGreen = const Color(0xff73AF57);
  final camelGreen = const Color(0xff89AB79);
  final darkGreen = const Color(0xff388e3c);
  final chipColor = const Color(0xff638421);
  final lighterBlue = const Color(0xff73C5C7);
  final lighterOrange = const Color(0xffE5AA5E);
  final splashBg = const Color(0xff5C88D9);
  final tintGrey = const Color(0xffE8EAEC);
  final shadowColor = const Color(0xffA6B7D8);
  final textColor = const Color(0xff393D43);
  final dividerColor = const Color(0xffBDC4D0);
  final lighterGrey = const Color(0xffEAECF3);
  final shadowColorSecondary = const Color(0xff7B89A3);
  final kanbanColumnBackground = const Color(0xffEAEDF2);
  final buttonGrey = const Color(0xffced3dc);
  final labelBlack = const Color(0xff515A6B);
  final lighterGreen = const Color(0xff9FD188);
  final secondaryDarkGrey = const Color(0xFF6D6E6F);
  final lighterBluishGrey = const Color(0xffDAE6ED);
  final customizeBorderColor = const Color(0xffE2E5E9);
  final progressBackground = const Color(0xffF8F9FA);
}
