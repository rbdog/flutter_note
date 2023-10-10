import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/build_ondispose/state.dart';

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
        '/3': (context) => const Page3(),
      },
    );
  }
}

// 画面 1
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: const Center(),
    );
  }
}

// 画面 2
class Page2 extends ConsumerWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('2'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.of(context).pushNamed('/3');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('$count'),
      ),
    );
  }
}

// 画面 3
class Page3 extends ConsumerWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 数値
    final count = ref.watch(countNotifierProvider);

    // ボタン
    final button = FloatingActionButton(
      onPressed: () {
        final notifier = ref.read(countNotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('3'),
      ),
      floatingActionButton: button,
      body: Center(
        child: Text('$count'),
      ),
    );
  }
}
