import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:banana/riverpod/basic_provider_logic/state.dart';
part 'logic.g.dart';

@riverpod
String logic(LogicRef ref) {
  // 年齢
  final age = ref.watch(ageNotifierProvider);

  debugPrint('これからお酒が飲めるかどうかチェックします');

  late String text;
  if (age < 20) {
    text = '飲んではいけません。';
  } else {
    text = 'ひゃっはー、飲める、飲めるぜーーーー!!!!';
  }

  return text;
}
