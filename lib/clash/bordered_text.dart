import 'package:flutter/material.dart';

/// フチ取り付きのテキスト
class BorderedText extends StatelessWidget {
  const BorderedText(
    this.text, {
    super.key,
    this.textColor = Colors.white,
    this.borderColor = Colors.black,
    this.borderWidth = 4,
    this.textSise = 28,
    this.spacing = 5,
    this.maxLines = 1,
    this.fontFamily,
  });

  // 文字
  final String text;
  // 文字の色
  final Color textColor;
  // 文字サイズ
  final double textSise;
  // フチの色
  final Color borderColor;
  // フチの幅
  final double borderWidth;
  // 文字間隔
  final double spacing;
  // 最大行数
  final int maxLines;
  // フォント
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 背面のテキスト
        Text(
          text,
          maxLines: maxLines,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: textSise,
            letterSpacing: spacing,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = borderWidth
              ..color = borderColor,
          ),
        ),
        // 前面のテキスト
        Text(
          text,
          maxLines: maxLines,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: textSise,
            letterSpacing: spacing,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
