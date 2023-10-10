import 'package:banana/part30/kv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

// ドリンクの状態管理

@riverpod
class DrinkNotifier extends _$DrinkNotifier {
  @override
  Future<String> build() async {
    // KV から取り出す
    return loadDrink(); // 最初のデータ
  }

  // ドリンクを変更
  Future<void> updateDrink(String drink) async {
    // KV に保存
    await saveDrink(drink);
    // 状態を変更
    state = AsyncData(drink);
  }
}

//
// ヒント: AsyncValue.data は AsyncData にリニューアルされました
//