import 'package:flutter/material.dart';

// アコーディオン (オリジナルWidget)
class Accordion extends StatelessWidget {
  // ウィジェットのコンストラクターは const を付けておく
  const Accordion({
    super.key,
    required this.headColor,
    required this.bodyColor,
    required this.title,
    required this.imageName,
  });

  // --- 知りたい情報たちには final を付けておく ---

  /// 頭の部分の色
  final Color headColor;

  /// 体の部分の色
  final Color bodyColor;

  /// 頭の部分の文字
  final String title;

  /// 開いたときの画像ファイル名
  final String imageName;

  @override
  Widget build(BuildContext context) {
    // ExpansionTile ウィジェットを使ってアコーディオンを作る
    // かなり細かく設定できるようになっている
    return ExpansionTile(
      // 閉じたときの文字の色
      collapsedTextColor: Colors.white,
      // 開いたときの文字の色
      textColor: Colors.white,
      // 閉じたときのアイコンの色
      collapsedIconColor: Colors.white,
      // 開いたときのアイコンの色
      iconColor: Colors.white,
      // 閉じたときの背景の色
      collapsedBackgroundColor: headColor, // 引数で教えてもらった色を使う
      // 開いたときの背景の色
      backgroundColor: headColor,
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      children: [
        // 中身のコンテナ
        Container(
          color: bodyColor,
          width: double.infinity,
          height: 100,
          alignment: Alignment.center,
          child: Image.asset(imageName),
        ),
      ],
    );
  }
}
