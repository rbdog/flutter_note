import 'package:flutter/material.dart';

//
// 画面 C
//
class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: const Center(
        child: Text(
          '画面 C',
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
