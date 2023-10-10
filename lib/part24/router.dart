import 'package:flutter/material.dart';
import 'package:banana/part24/pages.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:banana/part24/state.dart';
part 'router.g.dart';

/// ---------------------------------------------------------
/// ページごとのパス    >> router/page_path.dart
/// ---------------------------------------------------------
class PagePath {
  // サインイン画面のパス
  static const signIn = '/sign-in';
  // ホーム画面のパス
  static const home = '/home';
}

/// ---------------------------------------------------------
/// GoRouter    >> router/router.dart
/// ---------------------------------------------------------
@riverpod
GoRouter router(RouterRef ref) {
  // パスと画面の組み合わせ
  final routes = [
    // サインイン画面
    GoRoute(
      path: PagePath.signIn,
      builder: (_, __) => const SignInPage(),
    ),

    // ユーザーIDスコープで囲むためのシェル
    ShellRoute(
      builder: (_, __, child) => UserIdScope(child: child),
      routes: [
        // ホーム画面
        GoRoute(
          path: PagePath.home,
          builder: (_, __) => const HomePage(),
        ),
        // xxx画面
        // yyy画面
        // zzz画面
      ],
    ),
  ];

  // リダイレクト - 強制的に画面を変更する
  String? redirect(BuildContext context, GoRouterState state) {
    // 表示しようとしている画面
    final page = state.uri.toString();
    // サインインしているかどうか
    final signedIn = ref.read(signedInProvider);

    if (signedIn && page == PagePath.signIn) {
      // もうサインインしているのに サインイン画面を表示しようとしている --> ホーム画面へ
      return PagePath.home;
    } else if (!signedIn) {
      // まだサインインしていない --> サインイン画面へ
      return PagePath.signIn;
    } else {
      return null;
    }
  }

  // リフレッシュリスナブル - Riverpod と GoRouter を連動させるコード
  // サインイン状態が切り替わったときに GoRouter が反応する
  final listenable = ValueNotifier<Object?>(null);
  ref.listen<Object?>(signedInProvider, (_, newState) {
    listenable.value = newState;
  });
  ref.onDispose(listenable.dispose);

  // GoRouterを作成
  return GoRouter(
    initialLocation: PagePath.signIn,
    routes: routes,
    redirect: redirect,
    refreshListenable: listenable,
  );
}

/// ---------------------------------------------------------
/// アプリ本体    >> router/app.dart
/// ---------------------------------------------------------
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
