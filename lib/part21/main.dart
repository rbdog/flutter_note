import 'package:flutter/material.dart';

void main() {
  // フレーバー
  const flavor = String.fromEnvironment('flavor');

  if (flavor == 'dev') {
    // ここは dev のときだけ
  }

  if (flavor == 'stg') {
    // ここは stg のときだけ
    debugPrint('バナナだぁぁぁ');
  }

  if (flavor == 'prd') {
    // ここは prd のときだけ
  }

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
    return const Scaffold(
      body: Center(
        child: Text('バナナ'),
      ),
    );
  }
}
