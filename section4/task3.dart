import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: const Task4_3App(),
    ),
  );
}

class Task4_3App extends StatelessWidget {
  const Task4_3App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterScreen());
  }
}

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>();
    return Scaffold(
      appBar: AppBar(title: const Text("Counter with Provider")),
      body: Center(
        child: Text("Count: ${counter.count}",
            style: const TextStyle(fontSize: 30)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: counter.decrement, child: const Icon(Icons.remove)),
          const SizedBox(width: 10),
          FloatingActionButton(
              onPressed: counter.increment, child: const Icon(Icons.add)),
          const SizedBox(width: 10),
          FloatingActionButton(
              onPressed: counter.reset, child: const Icon(Icons.refresh)),
        ],
      ),
    );
  }
}
