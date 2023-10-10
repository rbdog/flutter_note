import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:banana/part31/realtime.dart';
import 'package:banana/part31/service.dart';
import 'package:banana/part31/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // Firebase の準備
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
    /* CRUD の C */
    final c = ElevatedButton(
      onPressed: () {
        final service = FirestoreService();
        service.create();
      },
      child: const Text('Create 作成'),
    );

    /* CRUD の R */
    final r = ElevatedButton(
      onPressed: () {
        final service = FirestoreService();
        service.read();
      },
      child: const Text('Read 読み出し'),
    );

    /* CRUD の U */
    final u = ElevatedButton(
      onPressed: () {
        final service = FirestoreService();
        service.update();
      },
      child: const Text('Update 変更'),
    );

    /* CRUD の D */
    final d = ElevatedButton(
      onPressed: () {
        final service = FirestoreService();
        service.delete();
      },
      child: const Text('Delete 削除'),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // J-POPの曲数
            const JpopCount(),
            // ボタンたち
            c,
            r,
            u,
            d,
          ],
        ),
      ),
    );
  }
}
