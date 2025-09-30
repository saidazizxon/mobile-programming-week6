import 'package:flutter/material.dart';

void main() => runApp(const Task3_2App());

class Task3_2App extends StatelessWidget {
  const Task3_2App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GreetingManager());
  }
}

class GreetingManager extends StatefulWidget {
  const GreetingManager({super.key});

  @override
  State<GreetingManager> createState() => _GreetingManagerState();
}

class _GreetingManagerState extends State<GreetingManager> {
  String _name = "Guest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Greeting(name: _name)),
    );
  }
}

class Greeting extends StatelessWidget {
  final String name;
  const Greeting({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text("Hello, $name", style: const TextStyle(fontSize: 24));
  }
}
