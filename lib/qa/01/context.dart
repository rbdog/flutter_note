import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

///
/// X画面へ進むボタン
///
class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.externalContext,
  });

  /// 外側の context
  final BuildContext externalContext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // 外側のコンテキストを使う
        final navigator = Navigator.of(externalContext);
        // 内側のコンテキストを使う
        // final navigator = Navigator.of(context);

        navigator.push(
          MaterialPageRoute(
            builder: (_) => const PageX(),
          ),
        );
      },
      child: const Text('X画面へ進む'),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'アイテムA',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'アイテムB',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'アイテムC',
      ),
    ];

    final bar = BottomNavigationBar(
      items: items,
      currentIndex: selectedIndex.value,
      onTap: (index) {
        selectedIndex.value = index;
      },
    );

    const pages = [
      PageA(),
      PageB(),
      PageC(),
    ];

    return Scaffold(
      body: pages[selectedIndex.value],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: bar,
      ),
    );
  }
}

//
// 画面 A
//
class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: const Center(
        child: Text(
          '画面 A',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//
// 画面 B
//
class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
          child: Scaffold(
            backgroundColor: Colors.green[100],
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '画面 B',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MyButton(externalContext: context),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//
// 画面 C
//
class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: const Center(
        child: Text(
          '画面 C',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//
// 画面 X
//
class PageX extends StatelessWidget {
  const PageX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              '画面 X',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
