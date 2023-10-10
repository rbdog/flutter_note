import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/select/state.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 四国の状態を watch
    final shikoku = ref.watch(shikokuNotifierProvider);

    // 香川だけを listen (select)
    ref.listen(
      shikokuNotifierProvider.select(
        (shikoku) => shikoku.kagawa,
      ),
      (oldState, newState) {
        // スナックバーを表示する
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$oldState から $newState へ変化しました'),
          ),
        );
      },
    );

    // 人口たち
    final popurations = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('${shikoku.kagawa}'),
        Text('${shikoku.tokushima}'),
        Text('${shikoku.kochi}'),
        Text('${shikoku.ehime}'),
      ],
    );

    // ボタンたち
    final buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(shikokuNotifierProvider.notifier);
            notifier.updateKagawa();
          },
          child: const Text('香川'),
        ),
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(shikokuNotifierProvider.notifier);
            notifier.updateTokushima();
          },
          child: const Text('徳島'),
        ),
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(shikokuNotifierProvider.notifier);
            notifier.updateKochi();
          },
          child: const Text('高知'),
        ),
        ElevatedButton(
          onPressed: () {
            final notifier = ref.read(shikokuNotifierProvider.notifier);
            notifier.updateEhime();
          },
          child: const Text('愛媛'),
        ),
      ],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 人口たち
        popurations,
        // ボタンたち
        buttons,
      ],
    );
  }
}
