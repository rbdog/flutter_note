import 'package:flutter/material.dart';

void main() {
  // 画像
  final img = Image.asset(
    'images/sushi.jpeg',
  );

  // 小さいコンテナ
  final smallCon = Container(
    color: Colors.deepOrange, // オレンジ色
    width: 50,
    height: 50,
  );

  // 縦に並べるカラム
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      smallCon, // 小さいコンテナ
      img, // 画像
      smallCon, // 小さいコンテナ
    ],
  );

  // 大きいコンテナ
  final bigCon = Container(
    color: Colors.blue, // 青色
    width: 400,
    height: 400,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(20),
    child: col, // 中にカラムを丸ごと入れる
  );

  // アプリ
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: bigCon, // 大きいコンテナを表示する
      ),
    ),
  );
  runApp(a);
}
