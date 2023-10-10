import 'package:flutter/material.dart';
import 'package:banana/part25/screen_pod.dart';

/* 

  # 注意
    - 動画で説明した device_preview パッケージは メンテナンスが停止中です
    - 再開までの間 代わりに device_preview_minus パッケージをお使いください

*/

void main() async {
  const home = HomePage();
  const app = MaterialApp(home: home);
  runApp(app);
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // watch
    final screen = ScreenRef(context).watch(screenProvider);

    String text1;
    if (screen.sizeClass == ScreenSizeClass.phone) {
      text1 = 'これはスマホサイズです';
    } else {
      text1 = 'これはスマホサイズではありません';
    }

    String text2;
    if (screen.orientation == Orientation.portrait) {
      text2 = 'これは縦向きです';
    } else {
      text2 = 'これは縦向きではありません';
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // 文字 1
            Text(
              text1,
              style: const TextStyle(fontSize: 20),
            ),
            // 文字 2
            Text(
              text2,
              style: const TextStyle(fontSize: 20),
            ),
            // 色付きコンテナ
            Container(
              color: Colors.orange,
              width: screen.designW(200), // 画面サイズによって変わる大きさ
              height: screen.designH(100),
            ),
          ],
        ),
      ),
    );
  }
}
