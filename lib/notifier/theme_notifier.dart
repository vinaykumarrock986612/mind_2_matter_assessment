import 'package:flutter/material.dart';

import '../config/app_config.dart';
import '../config/theme/app_theme.dart';
import '../constants/app_assets.dart';

class ThemeNotifier with ChangeNotifier {
  final darkColors = AppTheme.dark;
  final lightColors = AppTheme.light;

  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        iconTheme: const IconThemeData(color: Colors.white),
        primaryIconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        fontFamily: AppFonts.primary,
        primaryColor: darkColors.primary,
        primaryColorLight: darkColors.primary,
        indicatorColor: darkColors.primary,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: darkColors.background,
        extensions: [
          TextThemeConfig(
            extraFontSize: AppConfig.extraFontSize,
            extraFontWeight: AppConfig.extraFontWeight,
            enableBoldText: AppConfig.enableBoldText,
          ),
        ],
      );

  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        iconTheme: const IconThemeData(color: Colors.black),
        primaryIconTheme: const IconThemeData(color: Colors.black),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        fontFamily: AppFonts.primary,
        primaryColor: lightColors.primary,
        primaryColorLight: lightColors.primary,
        indicatorColor: lightColors.primary,
        brightness: Brightness.light,
        scaffoldBackgroundColor: lightColors.background,
        extensions: [
          TextThemeConfig(
            extraFontSize: AppConfig.extraFontSize,
            extraFontWeight: AppConfig.extraFontWeight,
            enableBoldText: AppConfig.enableBoldText,
          ),
        ],
      );

  ThemeData get themeData => AppTheme.themeMode == ThemeMode.dark ? darkTheme : lightTheme;
}
