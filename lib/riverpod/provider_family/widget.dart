import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/riverpod/provider_family/family.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final japan = ref.watch(familyProvider('日本'));
    final usa = ref.watch(familyProvider('アメリカ'));

    // WBC優勝おめでとう!
    final wbcScore = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('$japan'),
        Text('$usa'),
      ],
    );

    return wbcScore;
  }
}
