import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_size.dart';
import '../app_config.dart';
import 'app_colors.dart';

abstract class AppTypography {
  const AppTypography(AppColors colors);

  AppTextStyle get header1;

  AppTextStyle get header2;

  AppTextStyle get header3;

  AppTextStyle get title;

  AppTextStyle get subTitle;

  AppTextStyle get buttonText;

  AppTextStyle get caption;

  AppTextStyle get title2;

  AppTextStyle get body1;

  AppTextStyle get body2;
}

class AppTextTheme extends AppTypography {
  final AppColors colors;

  const AppTextTheme(this.colors) : super(colors);

  @override
  AppTextStyle get header1 => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w600.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + 24,
        height: AppSize.lineHeightHeader1_24,
      );

  @override
  AppTextStyle get header2 => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w500.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + 19,
        height: 1,
      );

  @override
  AppTextStyle get header3 => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w600.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + 17,
        height: 1,
      );

  @override
  AppTextStyle get title => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w600.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + AppSize.textTitle_16,
        height: 1,
      );

  @override
  AppTextStyle get title2 => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w400.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + AppSize.textTitle_18,
        height: AppSize.lineHeightTitle_18,
      );

  @override
  AppTextStyle get subTitle => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w500.index),
        color: colors.secondaryText,
        fontSize: AppConfig.extraFontSize + AppSize.textSubTitle_14,
        height: AppSize.lineHeight_19,
      );

  @override
  AppTextStyle get buttonText => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w400.index),
        color: colors.white,
        fontSize: AppConfig.extraFontSize + AppSize.textSubTitle_14,
        height: 1,
      );

  @override
  AppTextStyle get caption => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w400.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + AppSize.textCaption_12,
        height: AppSize.lineHeightNormal_16,
      );

  @override
  AppTextStyle get body1 => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w500.index),
        color: colors.secondaryText,
        fontSize: AppConfig.extraFontSize + AppSize.textNormal_14,
        height: AppSize.lineHeightNormal_16,
      );

  @override
  AppTextStyle get body2 => AppTextStyle(
        fontFamily: AppFonts.primary,
        fontWeight: getFontWeight(FontWeight.w500.index),
        color: colors.primaryText,
        fontSize: AppConfig.extraFontSize + AppSize.textNormal_12,
        height: AppSize.lineHeightNormal_16,
      );
}

FontWeight getFontWeight(int index) {
  if ((AppConfig.extraFontWeight + index) < FontWeight.values.length && (AppConfig.extraFontWeight + index) > 0) {
    return FontWeight.values[AppConfig.extraFontWeight + index];
  }

  if ((AppConfig.extraFontWeight + index) <= 0) {
    return FontWeight.values.first;
  }
  return FontWeight.values.last;
}

class AppTextStyle extends TextStyle {
  const AppTextStyle({
    super.color,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.fontWeight,
    super.fontStyle,
    super.textBaseline,
    super.fontFamily,
    super.fontFamilyFallback,
    super.fontSize,
    super.letterSpacing,
    super.wordSpacing,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.background,
    super.foreground,
    super.shadows,
    super.fontFeatures,
    super.fontVariations,
  });

  @override
  AppTextStyle copyWith({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return fromTextStyle(
      fontFamily: fontFamily,
      color: color,
      fontSize: fontSize != null ? AppConfig.extraFontSize + fontSize : null,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight != null ? getFontWeight(fontWeight.index) : null,
      fontStyle: fontStyle,
      decoration: decoration,
      height: height,
    );
  }

  AppTextStyle fromTextStyle({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return AppTextStyle(
      color: color ?? this.color,
      decoration: decoration ?? this.decoration,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      textBaseline: textBaseline ?? this.textBaseline,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      fontSize: fontSize ?? this.fontSize,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      height: height ?? this.height,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
      locale: locale ?? this.locale,
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      shadows: shadows ?? this.shadows,
      fontFeatures: fontFeatures ?? this.fontFeatures,
      fontVariations: fontVariations ?? this.fontVariations,
    );
  }
}

class TextThemeConfig extends ThemeExtension<TextThemeConfig> {
  final double extraFontSize;
  final int extraFontWeight;
  final bool enableBoldText;

  const TextThemeConfig({
    required this.extraFontSize,
    required this.extraFontWeight,
    required this.enableBoldText,
  });

  @override
  ThemeExtension<TextThemeConfig> copyWith({
    double? extraFontSize,
    int? extraFontWeight,
    bool? enableBoldText,
  }) =>
      TextThemeConfig(
        extraFontSize: extraFontSize ?? this.extraFontSize,
        extraFontWeight: extraFontWeight ?? this.extraFontWeight,
        enableBoldText: enableBoldText ?? this.enableBoldText,
      );

  @override
  ThemeExtension<TextThemeConfig> lerp(covariant ThemeExtension<TextThemeConfig>? other, double t) {
    if (other is! TextThemeConfig) {
      return this;
    }

    return TextThemeConfig(
      extraFontSize: ui.lerpDouble(extraFontSize, other.extraFontSize, t) ?? extraFontSize,
      extraFontWeight: other.extraFontWeight,
      enableBoldText: other.enableBoldText,
    );
  }
}
