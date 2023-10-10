import 'package:flutter/material.dart';
import 'package:banana/riverpod/s2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget2 extends ConsumerWidget {
  const MyWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // S2 watch
    final s2 = ref.watch(s2NotifierProvider);

    // ListView
    final listView = ListView.builder(
      itemCount: s2.length,
      itemBuilder: (_, index) {
        // index番目の文字
        final text = Text(s2[index]);
        return Card(child: text);
      },
    );

    // ボタン
    final button = FloatingActionButton(
      onPressed: () {
        // S2 Notifier
        final notifier = ref.read(s2NotifierProvider.notifier);
        // データを変更
        notifier.updateState();
      },
      child: const Icon(Icons.add),
    );

    // 縦に並べる
    return Scaffold(
      floatingActionButton: button,
      body: listView,
    );
  }
}
