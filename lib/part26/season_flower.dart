import 'package:flutter/material.dart';
import 'package:banana/part26/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 季節ごとの花
class SeasonFlower extends ConsumerWidget {
  const SeasonFlower({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 選択中の季節
    final season = ref.watch(seasonNotifierProvider);

    // 画像
    return Image.asset(
      switch (season) {
        Season.spring => 'images/cherry-blossom.png',
        Season.summer => 'images/sunflower.png',
        Season.autumn => 'images/maple.png',
        Season.winter => 'images/narcissus.png',
      },
    );
  }
}
