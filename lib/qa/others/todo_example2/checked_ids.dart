import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'checked_ids.g.dart';

@riverpod
class CheckedIdsNotifier extends _$CheckedIdsNotifier {
  @override
  List<String> build() {
    return [];
  }

  // チェックボックスがタップされたとき
  void onTapCheckbox(String id) {
    // 新しいデータを準備する (List.of で古いデータをコピーできる)
    final newIds = List.of(state);
    if (newIds.contains(id)) {
      // もうチェックされていたら取り除く
      newIds.remove(id);
    } else {
      // まだチェックされていなかったら追加する
      newIds.add(id);
    }
    // データを上書き
    state = newIds;
  }
}
