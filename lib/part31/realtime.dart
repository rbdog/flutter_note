import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'realtime.g.dart';

/// J-POP の数を監視
@riverpod
Stream<int> jpopCount(JpopCountRef ref) {
  final db = FirebaseFirestore.instance;

  // データベースを監視
  final snapshots = db
      .collection('songs')
      .where('genre', isEqualTo: 'J-POP') // J-POPのみ
      .snapshots();

  // docs: 曲たち
  // length: 曲数
  return snapshots.map(
    (snapshot) => snapshot.docs.length,
  );
}

/// J-POP の数を表示
class JpopCount extends ConsumerWidget {
  const JpopCount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(jpopCountProvider);
    return switch (count) {
      // 通信が終わったら テキスト
      AsyncData(:final value) => Text('J-POP: $value 曲'),
      // 通信中は グルグル
      AsyncValue() => const CircularProgressIndicator(),
    };
  }
}
