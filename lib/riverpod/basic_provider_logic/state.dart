import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

// 年齢

@riverpod
class AgeNotifier extends _$AgeNotifier {
  @override
  int build() {
    // 0 歳からスタート
    return 0;
  }

  // データを変更する関数
  void updateState() {
    final oldState = state;
    final newState = oldState + 1;
    state = newState;
  }
}
