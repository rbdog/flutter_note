import 'package:banana/qa/others/todo_example/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ビューモデル
class TodoViewModel extends StateNotifier<TodoList> {
  TodoViewModel(super._state);

  /// Todo を追加する
  void addTodo(TodoModel newTodo) {
    // 追加前の Todo たち
    final oldTodos = List.of(state);
    // 追加後の Todo たち
    final newtodos = [...oldTodos, newTodo]; // 一番最後に新しい Todo を追加
    // ステートを新しいものへ変更
    state = newtodos;
  }

  /// Todo を削除する
  void removeTodo(String targetId) {
    // 削除前のTodoたち
    final oldTodos = List.of(state);
    // IDを取り除く
    oldTodos.removeWhere((todo) {
      return todo.id == targetId; // ここでターゲットになったTodoが削除される
    });
    // 削除後の Todo たち
    final newTodos = oldTodos; // もう削除された後なので new, old は同じ
    // ステートを新しいものへ変更
    state = newTodos;
  }
}
