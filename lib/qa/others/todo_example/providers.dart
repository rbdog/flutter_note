// riverpod で使うプロバイダーを書いておくファイル

import 'package:banana/qa/others/todo_example/todo_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/qa/others/todo_example/todo_view_model.dart';

/// ビューモデルを入れておくプロバイダー
final todoViewModelProvider = StateNotifierProvider<TodoViewModel, TodoList>(
  (ref) {
    /// 画面を表示したときに、最初から出ている Todo たち
    const initialTodos = [
      TodoModel(id: '0', memo: 'これは適当なメモです0'),
      TodoModel(id: '1', memo: 'これは適当なメモです0'),
      TodoModel(id: '2', memo: 'これは適当なメモです0'),
    ];
    return TodoViewModel(initialTodos);
  },
);
