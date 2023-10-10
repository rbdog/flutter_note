import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

@riverpod
class TestNotifier extends _$TestNotifier {
  @override
  int build() {
    return 50;
  }

  void plus() {
    final oldState = state;
    final newState = oldState + 1;
    state = newState;
  }

  void minus() {
    final oldState = state;
    final newState = oldState - 1;
    state = newState;
  }
}
