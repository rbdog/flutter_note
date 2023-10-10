import 'package:flutter/material.dart';

/*

2023年 最新の Flutter で
カラムとローが const に対応しました🎉 

動画の中ではまだ対応していないと言っていましたが
このファイルでは修正してあります

*/

void main() {
  // カラム
  const col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('レモン'),
      Text('りんご'),
      Text('ブドウ'),
    ],
  );

  // ロー
  const row = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [col, col, col],
  );

  // アプリ
  const app = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );

  runApp(app);
}
