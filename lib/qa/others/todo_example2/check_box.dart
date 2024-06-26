import 'package:banana/qa/others/todo_example2/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* 自分のアプリ名によって変わるコード */
// import 'package:simple_memo/presentation/theme/colors.dart';
// import 'package:simple_memo/.../.../todos_provider.dart';

/* ルビーDogはこっち */
import 'package:banana/qa/others/todo_example2/colors.dart';
import 'package:banana/qa/others/todo_example2/todos_provider.dart';

class CheckBox extends ConsumerWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 全てのTodoモデルたち
    final allModels = ref.watch(todoModelsNotifierProvider);
    // チェックが入っていないToDoモデルたち
    final models = allModels.where((it) => !(it.isChecked));

    void onChangedCheckbox(String id) {
      // ノティファイヤーを使って状態を変える
      final notifier = ref.read(todoModelsNotifierProvider.notifier);
      notifier.toggleCheck(id);
    }

    final col = Column(
      children: [
        // Todoモデルの数だけ繰り返す
        for (final model in models)
          CheckboxListTile(
            activeColor: BrandColor.darkGrey,
            onChanged: (check) => onChangedCheckbox(model.id),
            value: model.isChecked,
            title: Text(model.memo),
          ),
      ],
    );

    return Scaffold(
      body: col,
      floatingActionButton: const AddButton(),
    );
  }
}
