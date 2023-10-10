import 'package:flutter/material.dart';
import 'package:banana/part26/season_dropdown.dart';
import 'package:banana/part26/season_flower.dart';
import 'package:banana/part26/season_time.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
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
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ドロップダウン
            SeasonDropdown(),
            // 季節ごとの時間帯
            SeasonTime(),
            // 季節ごとの花
            SeasonFlower(),
          ],
        ),
      ),
    );
  }
}
