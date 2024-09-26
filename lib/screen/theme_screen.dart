import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/model/theme_model.dart';


class ThemeSwitcherScreen extends StatelessWidget {
  const ThemeSwitcherScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switcher'),
      ),
      body: Center(
        child: Consumer<ThemeModel>(
          builder: (
            context,
            themeModel,
            child,
          ) {
            return SwitchListTile(
              title: const Text(
                'Dark Theme',
              ),
              value: themeModel.isDark,
              onChanged: (value) {
                themeModel.toggleTheme();
              },
            );
          },
        ),
      ),
    );
  }
}

