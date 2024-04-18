import 'package:banana/qa/others/todo_example2/todos_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// addボタン
class AddButton extends ConsumerWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      // 追加マークのアイコンを使う
      child: const Icon(Icons.add),
      // ボタンを押したとき
      onPressed: () {
        // ノティファイアーを使ってデータを変える
        final notifier = ref.read(todoModelsNotifierProvider.notifier);
        // 新しいTodoを追加する
        notifier.addNewTodo();
      },
    );
  }
}
