import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/basic_provider_logic/logic.dart';
import 'package:banana/riverpod/basic_provider_logic/state.dart';

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
      initialRoute: '/1',
      routes: {
        '/1': (context) => const Page1(),
        '/2': (context) => const Page2(),
      },
    );
  }
}

// 画面 1
class Page1 extends ConsumerWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 年齢チェック結果
    final text = ref.watch(logicProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.of(context).pushNamed('/2');
            },
          ),
        ],
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}

// 画面 2
class Page2 extends ConsumerWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final age = ref.watch(ageNotifierProvider);

    // ボタン
    final button = FloatingActionButton(
      onPressed: () {
        // 年齢を変更する
        final notifier = ref.read(ageNotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('2'),
      ),
      floatingActionButton: button,
      body: Center(
        child: Text('$age'),
      ),
    );
  }
}
