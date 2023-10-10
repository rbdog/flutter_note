import 'package:flutter/material.dart';

// 漫画のような影をつける
class ToonShadow extends StatelessWidget {
  const ToonShadow({
    super.key,
    this.offset = 10,
    required this.child,
  });

  /// 影の位置
  final double offset;

  /// 影を付けたい Widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned.fill(
          top: offset,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
