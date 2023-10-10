import 'package:flutter/material.dart';

// Firebase を使う時に必要なコード 1
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Firebase アナリティクスを使うコード 1
import 'package:firebase_analytics/firebase_analytics.dart';

void main() async {
  // Firebase を使う時に必要なコード 2
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  const app = MyApp();
  runApp(app);
}

/// アプリ本体
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面
    return Scaffold(
      body: Center(
        // ボタン
        child: ElevatedButton(
          // 押されたとき
          onPressed: () {
            // Firebase アナリティクスを使うコード 2
            FirebaseAnalytics.instance.logEvent(
              name: 'ボタンが押されました',
            );
          },
          child: const Text('ボタン'),
        ),
      ),
    );
  }
}
