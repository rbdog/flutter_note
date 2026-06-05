import 'package:flutter/material.dart';
import 'package:banana/part30/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ドリンクを表示
class DrinkText extends ConsumerWidget {
  const DrinkText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態管理からドリンクをGET
    final drink = ref.watch(drinkProvider);

    // AsyncValue で分ける
    return switch (drink) {
      // データがあるとき
      AsyncData(:final value) => Text(value),
      // それ以外 データがないとき
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}

/// ドリンクを編集できるテキストフィールド
class DrinkTextField extends ConsumerWidget {
  const DrinkTextField({
    super.key,
    required this.controller,
  });

  // テキスト編集コントローラー
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態管理からドリンクをGET
    final drink = ref.watch(drinkProvider);

    return switch (drink) {
      AsyncData(:final value) =>
        TextField(controller: controller..text = value),
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}

/// ドリンクを保存するボタン
class DrinkSaveButton extends ConsumerWidget {
  const DrinkSaveButton({
    super.key,
    required this.controller,
  });

  // テキスト編集コントローラー
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ボタン
    return ElevatedButton(
      onPressed: () {
        // 押されたときにコントローラーから入力された文字をGET
        final drink = controller.text;
        // ノティファイアーで状態を変更
        final notifier = ref.read(drinkProvider.notifier);
        notifier.updateDrink(drink);
      },
      child: const Text('保存する'),
    );
  }
}
