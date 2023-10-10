import 'package:flutter/material.dart';
import 'package:banana/part22/accordion.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // アコーディオンを縦に並べるカラム
    final column = Column(
      children: [
        // バナナのアコーディオン
        Accordion(
          title: 'バナナ',
          headColor: Colors.orange,
          bodyColor: Colors.orange.shade200,
          imageName: 'assets/images/banana.png',
        ),
        // リンゴのアコーディオン
        Accordion(
          title: 'リンゴ',
          headColor: Colors.red,
          bodyColor: Colors.red.shade200,
          imageName: 'assets/images/apple.png',
        ),
        // メロンのアコーディオン
        Accordion(
          title: 'メロン',
          headColor: Colors.green,
          bodyColor: Colors.green.shade200,
          imageName: 'assets/images/melon.png',
        ),
        // ブドウのアコーディオン
        Accordion(
          title: 'ブドウ',
          headColor: Colors.indigo,
          bodyColor: Colors.indigo.shade200,
          imageName: 'assets/images/grape.png',
        ),
      ],
    );

    // 画面
    return Scaffold(
      // 画面をはみ出したらスクロールできるようにする
      body: SingleChildScrollView(
        // 上で作ったカラム
        child: column,
      ),
    );
  }
}
