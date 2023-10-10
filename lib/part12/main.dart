import 'package:flutter/material.dart';
import 'package:banana/part12/side_menu.dart';

main() {
  // アップバー
  final appBar = AppBar(
    title: const Text('appBar'),
  );

  // ドロワー
  const drawer = Drawer(
    child: SideMenu(),
  );

  // エンドドロワー
  const endDrawer = Drawer(
    child: SideMenu(),
  );

  // フローティングアクションボタン (FAB)
  final fab = FloatingActionButton(
    onPressed: () {
      debugPrint('FAB が押されました');
    },
    child: const Text('FAB'),
  );

  // ボディ
  const body = Center(
    child: Text('body'),
  );

  // 画面
  final scaffold = Scaffold(
    appBar: appBar, // アップバー
    drawer: drawer, // ドロワー
    endDrawer: endDrawer, // エンドドロワー
    floatingActionButton: fab, // フローティングアクションボタン (FAB)
    body: body, // ボディ
  );

  // アプリ
  final app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: scaffold,
  );

  runApp(app);
}
