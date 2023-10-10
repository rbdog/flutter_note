import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ここで ref.watch など
    return const Text('ここにデータが入ります');
  }
}
