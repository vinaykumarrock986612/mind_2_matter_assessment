import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

export 'app_colors.dart';
export 'app_typography.dart';

class AppTheme {
  AppTheme._();

  static final AppColors dark = AppColors(
    primary: const Color(0xff43B888),
    secondary: const Color(0xffFB056C),
    tertiary: const Color(0xffe9eaff),
    background: const Color(0xff262A2F),
    secondaryBackground: const Color(0xff343A40),
    tertiaryBackground: const Color(0xff121416),
    cardBackground: const Color(0xff2C3136),
    primaryText: const Color(0xffF3F3F4),
    secondaryText: const Color(0xffA4A6A9),
    disabledText: const Color(0xFF404040),
    tertiaryText: const Color(0xffEDEDEE),
    iconColor: const Color(0xFF6e6e6e),
    backgroundAccent: const Color(0xff2E3246),
    primaryDivider: const Color(0xff343A40),
    secondaryDivider: const Color(0xff7B7F83),
    dropDownBackgroundColor: const Color(0xff121416),
    foundationDarkDark: const Color(0xffEDEDEE),
    disabledTextField: const Color(0xff343A40),
    blackAndWhite: const Color(0xffffffff),
    whiteAndBlack: const Color(0xff000000),
    defaultBackgroundColor: const Color(0xff262A2F),
    foundationBlueNormalBackground: const Color(0xffF9F9F9),
    foundationButtonColor: const Color(0xff777DF1),
    linkedIn: const PostCardColors(
      primary: Color(0xff0077B5),
      background: Color(0xff1d2226),
      authorName: Color(0xffffffff),
      handler: Color(0xffffffff),
      subTitle: Color(0xffffffff),
      content: Color(0xffffffff),
      actions: Color(0xffc6c8c9),
      divider: Color(0xff393c3f),
      likeButton: Color(0xff3292e8),
    ),
    twitter: const PostCardColors(
      primary: Color(0xff1DA1F2),
      background: Color(0xff000000),
      authorName: Color(0xffd9d9d9),
      handler: Color(0xff7c838a),
      subTitle: Color(0xff7c838a),
      content: Color(0xffd9d9d9),
      actions: Color(0xff7c838a),
      divider: Color(0xff2f3336),
      likeButton: Color(0xffF91880),
    ),
    threads: const PostCardColors(
      primary: Color(0xffffffff),
      background: Color(0xff101010),
      authorName: Color(0xfff3f5f7),
      handler: Color(0xff616161),
      subTitle: Color(0xff616161),
      content: Color(0xfff3f5f7),
      actions: Color(0xffcccccc),
      divider: Color(0xff212121),
      likeButton: Color(0xffff3040),
      verified: Color(0xff0865fe),
    ),
    facebook: const PostCardColors(
      primary: Color(0xff0866ff),
      background: Color(0xff242527),
      authorName: Color(0xffffffff),
      handler: Color(0xffffffff),
      subTitle: Color(0xff8a8d92),
      content: Color(0xffe5e6eb),
      actions: Color(0xfffefefe),
      divider: Color(0xffb0b3b8),
      likeButton: Color(0xff0865fe),
      iconFill: Color(0xff333436),
      verified: Color(0xff0865fe),
    ),
  );

  static final AppColors light = AppColors(
    primary: const Color(0xff43B888),
    secondary: const Color(0xffFB056C),
    tertiary: const Color(0xff1D2663),
    background: const Color(0xffFFFFFF),
    secondaryBackground: const Color(0xffF3F4F8),
    tertiaryBackground: const Color(0xffFFFFFF),
    cardBackground: const Color(0xffF6F6F7),
    primaryText: const Color(0xff35312D),
    secondaryText: const Color(0xff777779),
    tertiaryText: const Color(0x7777799c),
    disabledText: const Color(0x292A2C9C),
    iconColor: const Color(0xFF6e6e6e),
    backgroundAccent: const Color(0xffECEEFB),
    primaryDivider: const Color(0xffE4E4EB),
    secondaryDivider: const Color(0xffE2E4F2),
    dropDownBackgroundColor: const Color(0xffEDEDEE),
    foundationDarkDark: const Color(0xff121416),
    disabledTextField: const Color(0xffD5D7D9),
    whiteAndBlack: const Color(0xffffffff),
    blackAndWhite: const Color(0xff000000),
    defaultBackgroundColor: const Color(0xffE8E8E8),
    foundationBlueNormalBackground: const Color(0xff4054DB),
    foundationButtonColor: const Color(0xff3A4CC5),
    linkedIn: const PostCardColors(
      primary: Color(0xff0077B5),
      background: Color(0xffffffff),
      authorName: Color(0xff404040),
      handler: Color(0xff666666),
      subTitle: Color(0xff666666),
      content: Color(0xff1a1a1a),
      actions: Color(0xff404040),
      divider: Color(0xffe8e8e8),
      likeButton: Color(0xff3292e8),
    ),
    twitter: const PostCardColors(
      primary: Color(0xff1DA1F2),
      background: Color(0xffffffff),
      authorName: Color(0xff0f1419),
      handler: Color(0xff536471),
      subTitle: Color(0xff536471),
      content: Color(0xff0f1419),
      actions: Color(0xff536471),
      divider: Color(0xffcfd9de),
      likeButton: Color(0xffF91880),
    ),
    threads: const PostCardColors(
      primary: Color(0xff000000),
      background: Color(0xffffffff),
      authorName: Color(0xff000000),
      handler: Color(0xff999999),
      subTitle: Color(0xff999999),
      content: Color(0xff000000),
      actions: Color(0xff424242),
      divider: Color(0xffececec),
      likeButton: Color(0xffff3040),
      verified: Color(0xff0865fe),
    ),
    facebook: const PostCardColors(
      primary: Color(0xff0866ff),
      background: Color(0xffffffff),
      authorName: Color(0xff050505),
      handler: Color(0xff8c8d92),
      subTitle: Color(0xff8a8d94),
      content: Color(0xff050505),
      actions: Color(0xff4b4c50),
      divider: Color(0xff666769),
      likeButton: Color(0xff0865fe),
      iconFill: Color(0xfff1f2f6),
      verified: Color(0xff0865fe),
    ),
  );

  /// This is the main accessor of AppTheme
  static AppThemeData of(BuildContext context) {
    final colors = AppTheme.colors(context);
    final textTheme = AppTheme.textTheme(context);
    final themeMode = AppTheme.themeMode;

    return AppThemeData(
      themeMode: themeMode,
      textTheme: textTheme,
      colors: colors,
    );
  }

  /// Getting color of context
  static AppColors colors(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark ? dark : light;
  }

  /// Getting text of context
  static AppTextTheme textTheme(BuildContext context) => AppTextTheme(colors(context));

  /// Getting theme mode of context
  /// Hardcoded for assessment purpose
  static ThemeMode get themeMode => ThemeMode.light;
}

/// AppThemeData Model
class AppThemeData {
  final ThemeMode themeMode;
  final AppTextTheme textTheme;
  final AppColors colors;

  AppThemeData({
    required this.themeMode,
    required this.textTheme,
    required this.colors,
  });
}

class PostCardColors {
  final Color primary;
  final Color background;
  final Color authorName;
  final Color handler;
  final Color subTitle;
  final Color content;
  final Color actions;
  final Color divider;
  final Color likeButton;
  final Color verified;
  final Color iconFill;

  const PostCardColors({
    required this.primary,
    required this.background,
    required this.authorName,
    required this.handler,
    required this.subTitle,
    required this.content,
    required this.actions,
    required this.divider,
    required this.likeButton,
    this.verified = const Color(0xff1D9BF0),
    this.iconFill = const Color(0xff333436),
  });
}
