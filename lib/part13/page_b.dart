import 'package:flutter/material.dart';

//
// 画面 B
//
class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: const Center(
        child: Text(
          '画面 B',
          style: TextStyle(
            // 文字の大きさ
            fontSize: 20,
            // 文字の太さ
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
