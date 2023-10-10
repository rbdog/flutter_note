import 'package:flutter/material.dart';
import 'package:banana/part32/my_timer.dart';
import 'package:intl/intl.dart';

void main() {
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
    return Scaffold(
      // 画面上に マイウィジェット
      appBar: AppBar(
        title: const MyWidget(),
      ),
      // 画面真ん中に 手作りタイマー
      body: const Center(
        child: MyTimer(),
      ),
    );
  }
}

/// マイウイジェット
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ISO8601 - イギリス (基準時刻)
    final timeA = DateTime.parse('2012-03-04T05:06:07.008Z');
    // ISO8601 - 日本 (ローカル)
    final timeB = DateTime.parse('2012-03-04T14:06:07.008+09:00');
    // 数値 - イギリス (基準時刻)
    final timeC = DateTime.utc(2012, 3, 4, 5, 6, 7, 8);
    // 数値 - 日本 (ローカル)
    final timeD = DateTime(2012, 3, 4, 14, 6, 7, 8);
    // 現在時刻 - イギリス (基準時刻)
    final timeE = DateTime.timestamp();
    // 現在時刻 - 日本 (ローカル)
    final timeF = DateTime.now();

    // 4分33秒
    const durA = Duration(
      minutes: 4,
      seconds: 33,
    );

    // 足し算
    final timeG = DateTime(2012, 3, 4);
    const durB = Duration(days: 5);
    final timeH = timeG.add(durB);

    // 引き算
    final timeI = DateTime(2061, 7, 28);
    final timeJ = DateTime(1986, 2, 9);
    final durC = timeI.difference(timeJ);

    // 比べる
    final timeK = DateTime.now();
    final timeL = DateTime(2025, 1, 1);
    final compared = timeK.compareTo(timeL);

    if (compared < 0) {
      debugPrint('今は 2025-1-1 よりも前です');
    }
    if (compared == 0) {
      debugPrint('今は 2025-1-1 00:00:00 ちょうどです');
    }
    if (compared > 0) {
      debugPrint('今は 2025-1-1 よりも後です');
    }

    // 見やすく整える
    final f = DateFormat('yyyyねん Mがつ dにち HHじ mmふん');
    // 表示したい日付を 1つ 選ぶ --> timeD
    final displayTime = f.format(timeD);

    /* 全ての中身を確認 */
    debugPrint('時刻A: $timeA');
    debugPrint('時刻B: $timeB');
    debugPrint('時刻C: $timeC');
    debugPrint('時刻D: $timeD');
    debugPrint('時刻E: $timeE');
    debugPrint('時刻F: $timeF');
    debugPrint('時刻G: $timeG');
    debugPrint('時刻H: $timeH');
    debugPrint('時刻I: $timeI');
    debugPrint('時刻J: $timeJ');

    debugPrint('時間A: $durA');
    debugPrint('時間B: $durB');
    debugPrint('時間C: $durC');

    return Text(displayTime);
  }
}
