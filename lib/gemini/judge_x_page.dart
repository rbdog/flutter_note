import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:banana/gemini/judge_x_state.dart';

/// 画面 Xの投稿を判定する
class JudgeXPage extends HookWidget {
  const JudgeXPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: FlutterLogo(),
                ),
                Text('文章から人物像を判定します'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: 120,
            child: _PostInputField(controller: controller),
          ),
          const SizedBox(height: 10),
          _JudgeButton(controller: controller),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              color: Colors.lightBlue[50],
              alignment: Alignment.center,
              child: const _PersonChar(),
            ),
          ),
        ],
      ),
    );
  }
}

/// 投稿を入力するエリア
class _PostInputField extends StatelessWidget {
  const _PostInputField({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.multiline,
      maxLines: 4,
      decoration: const InputDecoration(
        hintText: 'ここにXの投稿を入力',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.blue),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),
      ),
    );
  }
}

/// 判定ボタン
class _JudgeButton extends ConsumerWidget {
  const _JudgeButton({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personChar = ref.watch(personCharNotifierProvider);
    if (personChar.isLoading) {
      return const CircularProgressIndicator();
    } else {
      return ElevatedButton(
        onPressed: () async {
          final notifier = ref.read(personCharNotifierProvider.notifier);
          await notifier.judge(controller.text);
        },
        child: const Text('判定する'),
      );
    }
  }
}

/// 判定された人物像
class _PersonChar extends ConsumerWidget {
  const _PersonChar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personChar = ref.watch(personCharNotifierProvider);

    if (personChar.value == null) {
      return const Icon(
        Icons.person,
        color: Colors.grey,
        size: 50,
      );
    } else {
      return Text(personChar.value ?? '');
    }
  }
}
