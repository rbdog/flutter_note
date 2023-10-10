import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 手作りタイマー
class MyTimer extends HookWidget {
  const MyTimer({super.key});

  @override
  Widget build(BuildContext context) {
    // Dartタイマー
    final timer = useState<Timer?>(null);
    // 合計時間
    final elapsed = useState(0);

    // 画面が消えたときにタイマーも止める
    useEffect(
      () => () {
        timer.value?.cancel();
        timer.value = null;
      },
      const [],
    );

    // 合計時間 --> XX:XX へ変換
    final dur = Duration(seconds: elapsed.value);
    final mm = (dur.inMinutes % 60).toString().padLeft(2, '0');
    final ss = (dur.inSeconds % 60).toString().padLeft(2, '0');

    // 縦に並べる
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 時間テキスト
        Text('$mm:$ss'),

        // スタートボタン
        TextButton(
          onPressed: () {
            // Dartタイマーを1秒ごとに動かす
            const dur = Duration(seconds: 1);
            timer.value = Timer.periodic(dur, (_) {
              // 合計時間を 1 増やす
              elapsed.value = elapsed.value + 1;
            });
          },
          child: const Text('スタート'),
        ),

        // ストップボタン
        TextButton(
          onPressed: () {
            // タイマーを止める 空っぽに戻す
            timer.value?.cancel();
            timer.value = null;
          },
          child: const Text('ストップ'),
        ),

        // リセットボタン
        TextButton(
          onPressed: () {
            // 合計時間を元に戻す
            elapsed.value = 0;
          },
          child: const Text('リセット'),
        ),
      ],
    );
  }
}
