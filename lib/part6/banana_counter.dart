import 'package:flutter/material.dart';

// バナナカウンター
class BananaCounter extends StatelessWidget {
  // バナナの数
  final int number;
  const BananaCounter({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    // バナナの画像
    final banana = Image.asset('images/banana.png');

    // 数字の部分
    final text = Text(
      '$number',
      style: const TextStyle(
        color: Colors.yellow, // 文字の色
        fontSize: 50, // 文字の大きさ
      ),
    );

    // 横に並べる
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        banana,
        text,
      ],
    );

    // 色と大きさを決める
    final con = Container(
      width: 300, // 横幅
      height: 100, // 高さ
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black87, // 背景の色
        borderRadius: BorderRadius.circular(12), // 角を少し丸くする
      ),
      child: row,
    );

    // 表示するWidgetを決定する
    return con;
  }
}
