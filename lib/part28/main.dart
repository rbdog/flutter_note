import 'package:flutter/material.dart';

// Stack, Positioned, Align の練習

void main() {
  const app = MyApp();
  runApp(app);
}

// アプリ
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // 画面
      home: Scaffold(
        // 真ん中
        body: Center(
          // スタック練習
          child: MyStack(),
        ),
      ),
    );
  }
}

// スタックの練習
class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    //
    // スタック
    //
    final stack = Stack(
      clipBehavior: Clip.none,
      children: [
        // Positioned
        Positioned(
          left: 100, // 左から 100
          bottom: 200, // 下から 200
          width: 120, // 横幅 120
          height: 50, // 高さ 50
          child: Container(color: Colors.blue),
        ),

        // Align
        Align(
          alignment: const Alignment(0.5, 0.5),
          child: Container(
            width: 80, // 横幅 80
            height: 80, // 高さ 80
            color: Colors.red,
          ),
        ),
      ],
    );

    //
    // スタックの大きさと色
    //
    return Container(
      width: 500,
      height: 500,
      color: Colors.yellow,
      child: stack,
    );
  }
}
