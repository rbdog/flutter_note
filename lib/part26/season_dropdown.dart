import 'package:flutter/material.dart';
import 'package:banana/part26/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 季節を選ぶドロップダウン
class SeasonDropdown extends ConsumerWidget {
  const SeasonDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 今の季節
    final season = ref.watch(seasonNotifierProvider);

    /// 選択肢たち
    const items = [
      DropdownMenuItem(
        value: Season.spring,
        child: Text('ハル'),
      ),
      DropdownMenuItem(
        value: Season.summer,
        child: Text('ナツ'),
      ),
      DropdownMenuItem(
        value: Season.autumn,
        child: Text('アキ'),
      ),
      DropdownMenuItem(
        value: Season.winter,
        child: Text('フユ'),
      ),
    ];

    /// ドロップダウン本体
    return DropdownButton(
      value: season, // 現在の季節
      items: items, // すべての選択肢たち
      onChanged: (newSeason) {
        // 状態管理 --> 季節を変更
        final notifier = ref.read(seasonNotifierProvider.notifier);
        notifier.updateSeason(newSeason!);
      },
      focusColor: Colors.transparent, // 余計な影をなくす
    );
  }
}
