import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'constants/app_strings.dart';
import 'notifier/theme_notifier.dart';
import 'ui/book_list/book_list_screen.dart';

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
          home: const BookListScreen(),
        );
      },
    );
  }
}
