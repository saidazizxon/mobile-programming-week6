import 'package:flutter/material.dart';

void main() => runApp(const Task1_3App());

class Task1_3App extends StatelessWidget {
  const Task1_3App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: LikeButton(),
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isLiked = false; // initial state

  @override
  Widget build(BuildContext context) {
    return Icon(
      _isLiked ? Icons.favorite : Icons.favorite_border,
      color: Colors.red,
      size: 60,
    );
  }
}
