import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's2.g.dart';

@riverpod
class S2Notifier extends _$S2Notifier {
  @override
  List<String> build() {
    // 最初のデータ
    return ['A', 'B', 'C', 'D'];
  }

  // データを変更する関数
  void updateState() {
    // 変更前のデータ
    final oldState = state;
    // 変更後のデータ
    final newState = [...oldState, 'X'];
    // データを上書き
    state = newState;
  }
}
