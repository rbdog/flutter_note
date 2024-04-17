import 'package:banana/qa/others/todo_example/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'todos_provider.g.dart';

@riverpod
class TodoModelsNotifier extends _$TodoModelsNotifier {
  @override
  List<TodoModel> build() {
    return const [
      TodoModel(id: 'A', memo: 'あいうえお'),
      TodoModel(id: 'B', memo: 'かきくけこ'),
      TodoModel(id: 'C', memo: 'さしすせそ'),
    ];
  }

  // メモを編集する
  void updateMemo(String id, String memo) {
    final newModel = TodoModel(id: id, memo: memo);
    final newModels = state.map(
      (it) {
        if (it.id == id) return newModel;
        return it;
      },
    ).toList();
    state = newModels;
  }
}