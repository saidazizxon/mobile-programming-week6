import 'package:flutter/material.dart';

void main() => runApp(const Task1_5App());

class Task1_5App extends StatelessWidget {
  const Task1_5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: UserNameForm(),
      ),
    );
  }
}

class UserNameForm extends StatefulWidget {
  const UserNameForm({super.key});

  @override
  State<UserNameForm> createState() => _UserNameFormState();
}

class _UserNameFormState extends State<UserNameForm> {
  String _userName = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter your name",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _userName = value;
              });
            },
          ),
          const SizedBox(height: 20),
          Text(
            "Hello, $_userName",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
