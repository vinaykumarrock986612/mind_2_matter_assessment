import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'constants/app_strings.dart';
import 'notifier/theme_notifier.dart';
import 'ui/book_list/book_list_screen.dart';
import 'utils/app_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final themeNotifier = ThemeNotifier();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: themeNotifier,
      builder: (context, child) {
        return MaterialApp(
          title: AppStrings.appName,
          themeMode: AppTheme.themeMode,
          debugShowCheckedModeBanner: false,
          scrollBehavior: const AppScrollBehavior(),
          home: const BookListScreen(),
          builder: builder,
        );
      },
    );
  }

  Widget builder(BuildContext context, Widget? child) {
    final size = MediaQuery.sizeOf(context);
    if (size.width < 450) return child ?? const SizedBox();

    return Align(
      child: Container(
        width: 360,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 25,
              color: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
