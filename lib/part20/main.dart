import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

/// メイン関数
void main() {
  // OFL を守るために このコードが必要
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(
      'google_fonts/OFL.txt',
    );
    yield LicenseEntryWithLineBreaks(
      ['google_fonts'],
      license,
    );
  });

  // アプリ
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // テキスト
    final text = Text(
      'バナナ美味しい',
      style: GoogleFonts.hachiMaruPop(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );

    // ボタンを押した時の関数
    void onPressed() {
      showLicensePage(context: context);
    }

    // ボタン
    final button = ElevatedButton(
      onPressed: onPressed,
      child: const Text('ボタン'),
    );

    return Scaffold(
      body: Center(
        // カラムで縦に並べる
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text,
            button,
          ],
        ),
      ),
    );
  }
}
