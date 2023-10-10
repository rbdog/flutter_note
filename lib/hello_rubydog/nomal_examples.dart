// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:banana/part12/side_menu.dart';
import 'package:banana/part6/banana_counter.dart';
import 'package:banana/part10/main.dart' as part10;
import 'package:banana/part11/page_a.dart' as part11_a;
import 'package:banana/part11/page_b.dart' as part11_b;
import 'package:banana/part11/page_c.dart' as part11_c;
import 'package:go_router/go_router.dart';

class NoExamplePage extends StatelessWidget {
  const NoExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text('このパートには参考画面がありません'),
      ),
    );
  }
}

class Part02Page extends StatelessWidget {
  const Part02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('バナナ'),
      ),
    );
  }
}

class Part03Page extends StatelessWidget {
  const Part03Page({super.key});

  @override
  Widget build(BuildContext context) {
    const col = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('レモン'),
        Text('りんご'),
        Text('ブドウ'),
      ],
    );
    const row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [col, col, col],
    );
    return const Scaffold(
      body: Center(
        child: row,
      ),
    );
  }
}

class Part04Page extends StatelessWidget {
  const Part04Page({super.key});

  @override
  Widget build(BuildContext context) {
    final img = Image.asset(
      'assets/images/sushi.jpeg',
    );
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [img, img, img],
    );
    return Scaffold(
      body: Center(
        child: row,
      ),
    );
  }
}

class Part05Page extends StatelessWidget {
  const Part05Page({super.key});

  @override
  Widget build(BuildContext context) {
    final img = Image.asset(
      'assets/images/sushi.jpeg',
    );
    final smallCon = Container(
      color: Colors.deepOrange, // オレンジ色
      width: 50,
      height: 50,
    );
    final col = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        smallCon, // 小さいコンテナ
        img, // 画像
        smallCon, // 小さいコンテナ
      ],
    );
    final bigCon = Container(
      color: Colors.blue, // 青色
      width: 400,
      height: 400,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20),
      child: col, // 中にカラムを丸ごと入れる
    );
    return Scaffold(
      body: Center(
        child: bigCon, // 大きいコンテナを表示する
      ),
    );
  }
}

class Part06Page extends StatelessWidget {
  const Part06Page({super.key});

  @override
  Widget build(BuildContext context) {
    const bnn = BananaCounter(
      number: 888,
    );
    return const Scaffold(
      body: Center(
        child: bnn,
      ),
    );
  }
}

class Part07Page extends StatelessWidget {
  const Part07Page({super.key});

  @override
  Widget build(BuildContext context) {
    xxxx() {
      debugPrint('これから通信を始めます');
      debugPrint('通信中です');
      debugPrint('通信が終わりました');
    }

    final button = ElevatedButton(
      onPressed: xxxx,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
      ),
      child: const Text('押してみて'),
    );
    return Scaffold(
      body: Center(
        child: button,
      ),
    );
  }
}

class Part08Page extends StatelessWidget {
  const Part08Page({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    const textField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "あなたの名前",
        hintText: "カタカナで入力してください",
        errorText: null,
      ),
    );
    xxxx() {
      debugPrint(controller.text);
    }

    final button = ElevatedButton(
      onPressed: xxxx,
      child: const Text('ボタン'),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              child: textField,
            ),
            button,
          ],
        ),
      ),
    );
  }
}

class Part10Page extends StatelessWidget {
  const Part10Page({super.key});

  @override
  Widget build(BuildContext context) {
    final list = ListView.builder(
      itemCount: part10.models.length,
      itemBuilder: (c, i) => part10.modelToWidget(part10.models[i]),
    );
    final con = Center(
      child: SizedBox(
        height: 400,
        child: list,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.grey,
      body: con,
    );
  }
}

class Part11App extends StatelessWidget {
  Part11App({super.key});

  final router = GoRouter(
    initialLocation: '/a',
    routes: [
      GoRoute(
        path: '/a',
        builder: (context, state) => const part11_a.PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => const part11_b.PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => const part11_c.PageC(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}

class Part12Page extends StatelessWidget {
  const Part12Page({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('appBar'),
    );
    const drawer = Drawer(
      child: SideMenu(),
    );
    const endDrawer = Drawer(
      child: SideMenu(),
    );
    final fab = FloatingActionButton(
      onPressed: () {
        debugPrint('FAB が押されました');
      },
      child: const Text('FAB'),
    );
    const body = Center(
      child: Text('body'),
    );
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: fab,
      body: body,
    );
  }
}
