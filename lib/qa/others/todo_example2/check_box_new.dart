import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* 自分のアプリ名によって変わるコード */
// import 'package:simple_memo/application/state/checked_ids.dart';
// import 'package:simple_memo/presentation/theme/colors.dart';
// import 'package:simple_memo/.../.../todos_provider.dart';

/* ルビーDogはこっち */
import 'package:banana/qa/others/todo_example2/checked_ids.dart';
import 'package:banana/qa/others/todo_example2/colors.dart';
import 'package:banana/qa/others/todo_example2/todos_provider.dart';

class CheckBox extends ConsumerWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Todoモデルたち
    final models = ref.watch(todoModelsNotifierProvider);

    /// チェックされたIDたち....例えば [ A, C ] なら AとCがチェックされている
    final checkedIds = ref.watch(checkedIdsNotifierProvider);

    void onChangedCheckbox(String id) {
      // ノティファイヤーを使って状態を変える
      final notifier = ref.read(checkedIdsNotifierProvider.notifier);
      notifier.onTapCheckbox(id);
    }

    final col = Column(
      children: [
        // Todoモデルの数だけ繰り返す
        for (final model in models)
          CheckboxListTile(
            activeColor: BrandColor.darkGrey,
            onChanged: (check) => onChangedCheckbox(model.id),
            value: checkedIds.contains(model.id),
            title: Text(model.memo),
          ),
      ],
    );

    return Scaffold(
      body: col,
    );
  }
}
