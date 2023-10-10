import 'package:flutter/material.dart';
import 'package:banana/part26/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 季節ごとの時間帯
class SeasonTime extends ConsumerWidget {
  const SeasonTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 選択中の季節
    final season = ref.watch(seasonNotifierProvider);

    // テキスト
    return Text(
      switch (season) {
        Season.spring => 'あけぼの',
        Season.summer => 'よる',
        Season.autumn => 'ゆうぐれ',
        Season.winter => 'つとめて',
      },
    );
  }
}
