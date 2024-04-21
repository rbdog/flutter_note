import 'package:banana/qa/others/todo_example2/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todos_provider.g.dart';

@riverpod
class TodoModelsNotifier extends _$TodoModelsNotifier {
  @override
  List<TodoModel> build() {
    return const [
      TodoModel(id: 'A', memo: 'あいうえお', isChecked: false),
      TodoModel(id: 'B', memo: 'かきくけこ', isChecked: true),
      TodoModel(id: 'C', memo: 'さしすせそ', isChecked: false),
    ];
  }

  /// 新しい ToDo を追加する
  void addNewTodo() {
    final newModels = List.of(state);
    const newModel = TodoModel(id: 'D', memo: 'たちつてと', isChecked: false);
    newModels.add(newModel);
    state = newModels;
  }

  /// チェックON/OFFを切り替える
  void toggleCheck(String id) {
    // 切り替え前のデータ
    final oldModel = state.firstWhere((it) => it.id == id);
    // 切り替え後のデータ
    final newModel = TodoModel(
      id: oldModel.id,
      memo: oldModel.memo,
      isChecked: !(oldModel.isChecked), // ! で true/false を反転できる
    );

    // 新しいデータたち(全てのTodo)を準備する
    final newModels = state.map(
      (it) {
        if (it.id == id) return newModel;
        return it;
      },
    ).toList();
    // データを上書き
    state = newModels;
  }

  /// メモを編集する
  void updateMemo(String id, String memo) {
    // 切り替え前のデータ
    final oldModel = state.firstWhere((it) => it.id == id);
    // 切り替え後のデータ
    final newModel = TodoModel(
      id: oldModel.id,
      memo: memo,
      isChecked: oldModel.isChecked,
    );

    // 新しいデータたち(全てのTodo)を準備する
    final newModels = state.map(
      (it) {
        if (it.id == id) return newModel;
        return it;
      },
    ).toList();
    // データを上書き
    state = newModels;
  }
}
