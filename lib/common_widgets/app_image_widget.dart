import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImageWidget {
  AppImageWidget._();
  static Widget svgAsset(
    String path, {
    BoxFit fit = BoxFit.none,
    Color? color,
    double? width,
    double? height,
  }) {
    return SvgPicture.asset(
      path,
      fit: fit,
      width: width,
      height: height,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
    );
  }
}
