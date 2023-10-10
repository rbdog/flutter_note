import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:banana/riverpod/basic_provider_cache/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache.g.dart';

// 平均点

@Riverpod(keepAlive: true)
int cacheAverage(CacheAverageRef ref) {
  debugPrint('平均点を計算します');
  final scores = ref.watch(scoreNotifierProvider);
  final average = scores.reduce((a, b) => a + b) / scores.length;
  return average.toInt();
}

// 最高点

@Riverpod(keepAlive: true)
int cacheMax(CacheMaxRef ref) {
  debugPrint('最大を計算します');
  final scores = ref.watch(scoreNotifierProvider);
  final maxScore = scores.reduce(max);
  return maxScore;
}
