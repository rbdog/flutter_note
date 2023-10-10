import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

///
/// useEffect の例
///
class Page2 extends HookWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面が表示されたとき
    useEffect(
      () {
        debugPrint('おはよう');
        return null;
      },
      const [],
    );

    // 画面が表示されたとき & 状態が変わったとき
    final state = useState(0);

    useEffect(
      () {
        debugPrint('こんにちは');
        return null;
      },
      [state.value],
    );

    // 画面が消えたとき
    useEffect(
      () {
        return () {
          debugPrint('さようなら');
        };
      },
      const [],
    );

    //  状態を変更するボタン
    final button = ElevatedButton(
      onPressed: () {
        state.value = state.value + 1;
      },
      child: const Text('更新'),
    );

    // 縦に並べる
    return Scaffold(
      appBar: AppBar(
        title: const Text('例: useEffect()'),
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
