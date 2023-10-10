import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:banana/hooks/custom_hook.dart';

///
/// カスタムHook の例
///
class Page4 extends HookWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = useMyController();

    // コントローラーを呼び出すボタン
    final button = ElevatedButton(
      onPressed: () {
        myController.buttonEvent();
      },
      child: const Text('更新'),
    );

    // 縦に並べる
    return Scaffold(
      appBar: AppBar(
        title: const Text('例: カスタムHook'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            button,
          ],
        ),
      ),
    );
  }
}
