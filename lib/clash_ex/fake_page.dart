import 'package:flutter/material.dart';

class FakePage extends StatelessWidget {
  const FakePage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 120,
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
