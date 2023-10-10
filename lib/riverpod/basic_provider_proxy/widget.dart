import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/basic_provider_proxy/proxy.dart';

// ウィジェット
class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final proxy = ref.watch(proxyProvider);

    final button = FloatingActionButton(
      onPressed: () {
        // P1 を 変更する
        final notifier = ref.read(p1NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Icon(Icons.refresh),
    );
    return Scaffold(
      floatingActionButton: button,
      body: Center(
        child: Text(proxy),
      ),
    );
  }
}
