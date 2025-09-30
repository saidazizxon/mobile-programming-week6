import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TodoListModel(),
      child: const Task4_5App(),
    ),
  );
}

class Task4_5App extends StatelessWidget {
  const Task4_5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TodoScreen());
  }
}

class TodoListModel extends ChangeNotifier {
  final List<String> _tasks = [];
  List<String> get tasks => _tasks;

  void addTask(String task) {
    _tasks.add(task);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final todoList = context.watch<TodoListModel>();

    return Scaffold(
      appBar: AppBar(title: const Text("Todo List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        labelText: "Enter task", border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    if (controller.text.isNotEmpty) {
                      context.read<TodoListModel>().addTask(controller.text);
                      controller.clear();
                    }
                  },
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoList.tasks.length,
              itemBuilder: (context, i) => ListTile(
                title: Text(todoList.tasks[i]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () =>
                      context.read<TodoListModel>().removeTask(i),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
