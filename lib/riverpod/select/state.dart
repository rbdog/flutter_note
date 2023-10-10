import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:banana/riverpod/select/shikoku.dart';
part 'state.g.dart';

@riverpod
class ShikokuNotifier extends _$ShikokuNotifier {
  @override
  Shikoku build() {
    // 人口
    return const Shikoku(
      kagawa: 93,
      tokushima: 70,
      kochi: 69,
      ehime: 130,
    );
  }

  void updateKagawa() {
    final oldState = state;
    final newState = oldState.copyWith(
      kagawa: oldState.kagawa + 1,
    );
    state = newState;
  }

  void updateTokushima() {
    final oldState = state;
    final newState = oldState.copyWith(
      tokushima: oldState.tokushima + 1,
    );
    state = newState;
  }

  void updateKochi() {
    final oldState = state;
    final newState = oldState.copyWith(
      kochi: oldState.kochi + 1,
    );
    state = newState;
  }

  void updateEhime() {
    final oldState = state;
    final newState = oldState.copyWith(
      ehime: oldState.ehime + 1,
    );
    state = newState;
  }
}
