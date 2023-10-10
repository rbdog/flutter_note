import 'package:flutter/material.dart';
import 'package:banana/part29/lemon_dialog.dart';
import 'package:banana/part29/pineapple_dialog.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ボタン
        child: ElevatedButton(
          onPressed: () async {
            // レモンダイアログを表示: showDialog
            // 閉じるのを待つ: await
            // 回答を受け取る: answer
            final answer = await showDialog(
              context: context,
              builder: (_) => const LemonDialog(),
            );

            // 回答を確認
            debugPrint(answer);

            // パイナップルダイアログを表示
            if (!context.mounted) return;
            showDialog(
              context: context,
              builder: (_) => const PineappleDialog(),
            );
          },
          child: const Text('開く'),
        ),
      ),
    );
  }
}
