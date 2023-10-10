import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/provider_scope/state.dart';

main() {
  const app = MyApp(
    pages: [
      // プロバイダースコープ
      ProviderScope(child: PageA()),

      // プロバイダースコープ
      ProviderScope(child: PageB()),
    ],
  );
  runApp(app);
}

// アプリ
class MyApp extends HookWidget {
  const MyApp({
    super.key,
    required this.pages,
  });

  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    final index = useState(0);

    // タブのアイテムたち
    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.circle),
        label: 'A',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.circle),
        label: 'B',
      ),
    ];

    // タブバー
    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.orange,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      currentIndex: index.value,
      onTap: (i) => index.value = i,
    );

    return MaterialApp(
      home: Scaffold(
        // プロバイダースコープがWidgetTreeから消えないようにするIndexedStack
        body: IndexedStack(
          index: index.value,
          children: pages,
        ),
        bottomNavigationBar: bar,
      ),
    );
  }
}

// 画面 A
class PageA extends ConsumerWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch
    final test = ref.watch(testNotifierProvider);
    // ボタン
    final button = FloatingActionButton(
      backgroundColor: Colors.orange,
      onPressed: () {
        ref.read(testNotifierProvider.notifier).minus();
      },
      child: const Icon(Icons.remove),
    );
    // 画面
    return Scaffold(
      floatingActionButton: button,
      body: Center(
        child: Text('$test'),
      ),
    );
  }
}

// 画面 B
class PageB extends ConsumerWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch
    final test = ref.watch(testNotifierProvider);
    // ボタン
    final button = FloatingActionButton(
      backgroundColor: Colors.orange,
      onPressed: () {
        ref.read(testNotifierProvider.notifier).plus();
      },
      child: const Icon(Icons.add),
    );
    // 画面
    return Scaffold(
      floatingActionButton: button,
      body: Center(
        child: Text('$test'),
      ),
    );
  }
}
