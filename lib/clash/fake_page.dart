import 'package:flutter/material.dart';

/// 偽物の画面
class FakePage extends StatelessWidget {
  const FakePage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 120,
            color: Colors.grey[200],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
