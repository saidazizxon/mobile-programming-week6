import 'package:flutter/material.dart';

void main() => runApp(const Task2_5App());

class Task2_5App extends StatelessWidget {
  const Task2_5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ColorBoxApp());
  }
}

class ColorBoxApp extends StatefulWidget {
  const ColorBoxApp({super.key});

  @override
  State<ColorBoxApp> createState() => _ColorBoxAppState();
}

class _ColorBoxAppState extends State<ColorBoxApp> {
  Color _color = Colors.red;

  void _changeColor(Color newColor) {
    setState(() => _color = newColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Box")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 200, height: 200, color: _color),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            children: [
              ElevatedButton(
                  onPressed: () => _changeColor(Colors.red),
                  child: const Text("Red")),
              ElevatedButton(
                  onPressed: () => _changeColor(Colors.green),
                  child: const Text("Green")),
              ElevatedButton(
                  onPressed: () => _changeColor(Colors.blue),
                  child: const Text("Blue")),
            ],
          )
        ],
      ),
    );
  }
}
