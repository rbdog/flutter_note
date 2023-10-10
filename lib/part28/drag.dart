import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// 手で掴んで動かせる Widget
// * 位置のずれは別の記事で説明

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ExampleDrag(),
        ),
      ),
    );
  }
}

class ExampleDrag extends HookWidget {
  const ExampleDrag({super.key});

  @override
  Widget build(BuildContext context) {
    // 動かす位置の状態管理
    final offset = useState(Offset.zero);

    // スタック
    return Stack(
      children: [
        Positioned(
          left: offset.value.dx,
          top: offset.value.dy,

          // これの説明は別の記事
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              final pos = details.localPosition;
              offset.value = pos;
            },
            onHorizontalDragUpdate: (details) {
              final pos = details.localPosition;
              offset.value = pos;
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
