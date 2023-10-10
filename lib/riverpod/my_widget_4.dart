import 'package:flutter/material.dart';
import 'package:banana/riverpod/s4.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget4 extends ConsumerWidget {
  const MyWidget4({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // S4 watch
    final s4 = ref.watch(s4NotifierProvider);
    // S3 AsyncValue
    final s4Text = s4.when(
      loading: () => const Text('準備中'),
      error: (e, s) => Text('エラー $e'),
      data: (d) => Text(d),
    );
    // S4 ボタン
    final s4Button = ElevatedButton(
      onPressed: () {
        // S4 ノティファイアを呼ぶ
        final notifier = ref.read(s4NotifierProvider.notifier);
        // S4 データを変更
        notifier.updateState();
      },
      child: const Text('受信'),
    );

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 横に並べる
        s4Text, s4Button,
      ],
    );
  }
}
