import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: const Task4_4App(),
    ),
  );
}

class Task4_4App extends StatelessWidget {
  const Task4_4App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeModel = context.watch<ThemeModel>();
    return MaterialApp(
      theme: themeModel.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text("Theme Switcher")),
        body: Center(
          child: Switch(
            value: themeModel.isDarkMode,
            onChanged: (_) => context.read<ThemeModel>().toggleTheme(),
          ),
        ),
      ),
    );
  }
}

class ThemeModel extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
