import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/basic_provider_cache/cache.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// アプリ
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/average': (context) => const AveragePage(),
        '/max': (context) => const MaxPage(),
      },
    );
  }
}

// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/average');
              },
              child: const Text('平均点'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/max');
              },
              child: const Text('最高点'),
            ),
          ],
        ),
      ),
    );
  }
}

// 平均点 画面
class AveragePage extends ConsumerWidget {
  const AveragePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final average = ref.watch(cacheAverageProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('平均点'),
      ),
      body: Center(
        child: Text('$average'),
      ),
    );
  }
}

// 最高点 画面
class MaxPage extends ConsumerWidget {
  const MaxPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxScore = ref.watch(cacheMaxProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('最高点'),
      ),
      body: Center(
        child: Text('$maxScore'),
      ),
    );
  }
}
