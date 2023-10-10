import 'package:flutter/material.dart';

// 右上にはみ出すように見える Widget

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
      home: Scaffold(
        body: Center(
          child: ExampleOverflow(),
        ),
      ),
    );
  }
}

class ExampleOverflow extends StatelessWidget {
  const ExampleOverflow({super.key});

  @override
  Widget build(BuildContext context) {
    //
    // スタック
    //
    final stack = Stack(
      clipBehavior: Clip.none,
      children: [
        // 真ん中の Widget
        Container(
          margin: const EdgeInsets.all(40),
          color: Colors.blue,
        ),

        // 右上の Widget
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );

    //
    // スタックの大きさと色
    //
    return Container(
      width: 300,
      height: 300,
      color: Colors.yellow,
      child: stack,
    );
  }
}
