import 'package:flutter/material.dart';

// 準備
//   好きな画像を用意
//   assets/images に画像を追加
//   pubspec.yaml を編集 asstes パスを書く

void main() {
  // 画像
  /* 動かす環境によっては 'assets/images/sushi.jpeg' にしないと映りません */
  final img = Image.asset(
    'images/sushi.jpeg',
  );

  // ロー
  final row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [img, img, img],
  );

  // アプリ
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );

  runApp(a);
}
