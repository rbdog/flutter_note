import 'package:flutter/material.dart';
import 'package:banana/qa/others/todo_example/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:banana/qa/others/todo_example/todo_model.dart';

class TodoView extends ConsumerWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ここでプロバイダーの中のビューモデルの中の Todo たちを取り出す
    final todos = ref.watch(todoViewModelProvider);

    // Todo を並べたリスト
    final list = ListView.builder(
      shrinkWrap: true,
      itemCount: todos.length,
      itemBuilder: (context, index) {
        // Todo 1つ分
        final todo = todos[index];
        return ListTile(
          title: Text(todo.memo),
          // 右側に削除ボタンをつける
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // 押されたとき ビューモデルを使って削除
              final viewModel = ref.read(todoViewModelProvider.notifier);
              viewModel.removeTodo(todo.id);
            },
          ),
        );
      },
    );

    // Todo 追加ボタン
    final addButton = FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // 押されたとき
        final viewModel = ref.read(todoViewModelProvider.notifier);

        // 適当な数字
        final id = '${todos.length}';
        // 適当なメモ
        const memo = 'これは適当なメモです';
        // 適当なTodo
        final newTodo = TodoModel(
          id: id,
          memo: memo,
        );

        // ビューモデルを使って追加
        viewModel.addTodo(newTodo);
      },
    );

    // 画面
    return Scaffold(
      body: list,
      floatingActionButton: addButton,
    );
  }
}
