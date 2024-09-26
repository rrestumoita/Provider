import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/model/theme_model.dart';
import 'package:provider2/screen/theme_screen.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (
        context,
        themeModel,
        child,
      ) {
        return MaterialApp(
          theme: themeModel.currentTheme,
          home: const ThemeSwitcherScreen(),
        );
      },
    );
  }
}

