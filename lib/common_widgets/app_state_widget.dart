import 'dart:math';

import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

abstract class AppStatefulWidget extends StatefulWidget {
  const AppStatefulWidget({super.key});
}

abstract class AppState<T extends StatefulWidget> extends State<T> {
  AppThemeData get theme => AppTheme.of(context);

  Size get screenSize {
    final size = MediaQuery.of(context).size;
    return Size(min(size.width, 450), size.height);
  }

  bool get isPortrait => MediaQuery.orientationOf(context) == Orientation.portrait;

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }
}

const mNil = SizedBox.shrink();
