import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserModel(),
      child: const Task4_2App(),
    ),
  );
}

class Task4_2App extends StatelessWidget {
  const Task4_2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<UserModel>(
                builder: (context, user, _) =>
                    Text("Username: ${user.username}"),
              ),
              ElevatedButton(
                onPressed: () =>
                    context.read<UserModel>().changeUsername("Admin"),
                child: const Text("Change to Admin"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserModel extends ChangeNotifier {
  String _username = "Guest";
  String get username => _username;

  void changeUsername(String newName) {
    _username = newName;
    notifyListeners();
  }
}
