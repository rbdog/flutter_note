import 'package:flutter/material.dart';
import 'package:banana/nintendo/colors.dart';
import 'package:banana/nintendo/sizes.dart';

/// ボタンを横に並べるホルダー
class ButtonHolder extends StatelessWidget {
  const ButtonHolder({
    super.key,
    required this.children,
  });

  /// ボタンたち
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // ボタンたちの間に　仕切りの線を入れる
    final childrenWithDividers = [];
    for (final child in children) {
      // ボタン
      childrenWithDividers.add(child);
      // 仕切り線
      childrenWithDividers.add(
        VerticalDivider(
          thickness: Sizes.p1,
          width: Sizes.p1,
          indent: Sizes.p5,
          endIndent: Sizes.p5,
          color: MyColors.darkGrey,
        ),
      );
    }
    // 一番最後の仕切り線はいらない
    childrenWithDividers.removeLast();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p5),
      decoration: BoxDecoration(
        color: MyColors.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.large),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final child in childrenWithDividers) child,
        ],
      ),
    );
  }
}
