import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/override_with/state.dart';
import 'package:banana/riverpod/override_with/widget.dart';

void main() {
  const app = MyApp();

  final scope = ProviderScope(
    overrides: [
      // ここに偽物のデータを使いたいプロバイダーたち

      appleProvider.overrideWith((ref) {
        return '毒りんご';
      }),
    ],
    child: app,
  );
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}
