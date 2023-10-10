import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'proxy.g.dart';

@riverpod
class P1Notifier extends _$P1Notifier {
  @override
  String build() {
    return 'み';
  }

  // データを変更する
  void updateState() {
    state = 'よ';
  }
}

@riverpod
class P2Notifier extends _$P2Notifier {
  @override
  String build() {
    return 'つ';
  }
}

@riverpod
class P3Notifier extends _$P3Notifier {
  @override
  String build() {
    return 'ば';
  }
}

// proxyProvider

@riverpod
String proxy(ProxyRef ref) {
  final p1 = ref.watch(p1NotifierProvider);
  final p2 = ref.watch(p2NotifierProvider);
  final p3 = ref.watch(p3NotifierProvider);

  return p1 + p2 + p3;
}
