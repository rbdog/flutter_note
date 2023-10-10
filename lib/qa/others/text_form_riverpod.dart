import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/* ここはファイル名と合わせること! */
part 'text_form_riverpod.g.dart';

/*
  保存 > generatorコマンド を忘れないでね！

  flutter pub run build_runner build --delete-conflicting-outputs
*/

/// -----------------------------------------
/// メイン関数
/// -----------------------------------------
void main() {
  const page = MyPage();
  const app = MaterialApp(home: page);
  const scope = ProviderScope(child: app);
  runApp(scope);
}

/// -----------------------------------------------------------
/// ノティファイヤー & 自動で作られるプロバイダー - 文字を保存しておく
/// -----------------------------------------------------------
@riverpod
class TextNotifier extends _$TextNotifier {
  @override
  String build() {
    return '';
  }

  // 新しい文字データを保存する
  void save(String newText) {
    state = newText;
  }
}

/// ----------------------------------
/// Myラベル - 保存されている文字を確認する
///-----------------------------------
class MyLabel extends ConsumerWidget {
  const MyLabel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 保存されている文字を watch
    final text = ref.watch(textNotifierProvider);
    return Text('保存されている文字は: $text');
  }
}

/// ---------------------------------------
/// Myテキストフォームフィールド - 文字を入力する
/// ---------------------------------------
class MyTextFormField extends ConsumerWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
  });
  // 入力コントローラーを外から渡してもらう
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onChanged: (_) {
        debugPrint('文字が変わりました');
        /* ここでデータを保存してもOK */
      },
      onEditingComplete: () {
        debugPrint('入力が終わりました');
        /* ここでデータを保存してもOK */
      },
      controller: controller,
    );
  }
}

/// ---------------------------------
/// Myボタン - 入力されたボタンを保存する
/// ---------------------------------
class MyButton extends ConsumerWidget {
  const MyButton({
    super.key,
    required this.controller,
  });
  // 入力コントローラーを外から渡してもらう
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('完了ボタンが押されました');

        /* ここでデータを保存する */
        // 1. コントローラーから今入力されている文字を教えてもらう
        final text = controller.text;
        // 2. ノティファイヤーを read する
        final notifier = ref.read(textNotifierProvider.notifier);
        // 3. 文字を保存する
        notifier.save(text);
      },
      child: const Text('完了'),
    );
  }
}

/// ----------
/// My画面
/// ----------
class MyPage extends HookWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 入力コントローラーを作る (これはhooksの便利な機能)
    final controller = useTextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // バランスよく間をあける
        children: [
          // Myラベル
          const MyLabel(),
          // Myテキストフォームフィールド
          MyTextFormField(controller: controller),
          // Myボタン
          MyButton(controller: controller)
        ],
      ),
    );
  }
}
