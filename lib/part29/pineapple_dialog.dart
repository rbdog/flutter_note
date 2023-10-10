import 'package:flutter/material.dart';

/// パイナップル ダイアログ
class PineappleDialog extends StatelessWidget {
  const PineappleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('パイナップル'),
      content: const Text('ピザに乗せてもいいですか？'),
      actions: [
        // ボタン
        TextButton(
          onPressed: () {
            // ダイアログを閉じる
            Navigator.pop(context, 'A');
          },
          child: const Text('キャンセル'),
        ),
        // ボタン
        TextButton(
          onPressed: () {
            // ダイアログを閉じる
            Navigator.pop(context, 'B');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
