import 'package:flutter/material.dart';

void main() => runApp(const Task2_3App());

class Task2_3App extends StatelessWidget {
  const Task2_3App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: VisibilityToggle());
  }
}

class VisibilityToggle extends StatefulWidget {
  const VisibilityToggle({super.key});

  @override
  State<VisibilityToggle> createState() => _VisibilityToggleState();
}

class _VisibilityToggleState extends State<VisibilityToggle> {
  bool _isVisible = true;

  void _toggle() {
    setState(() => _isVisible = !_isVisible);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toggle Visibility")),
      body: Center(
        child: _isVisible ? const Text("Hello World!") : const SizedBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        child: const Icon(Icons.visibility),
      ),
    );
  }
}
