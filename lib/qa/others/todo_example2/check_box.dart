import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* 自分のアプリ名によって変わるコード */
// import 'package:simple_memo/application/state/checked_ids.dart';
// import 'package:simple_memo/presentation/theme/colors.dart';

/* ルビーDogはこっち */
import 'package:banana/qa/others/todo_example2/checked_ids.dart';
import 'package:banana/qa/others/todo_example2/colors.dart';

/* これはもういらない。 代わりに checked_ids.dart に書いたものを使う*/
// final checkedIdsProvider = ...

class CheckBox extends ConsumerWidget {
  const CheckBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// チェックされたIDたち....例えば [ A, C ] なら AとCがチェックされている
    final checkedIds = ref.watch(checkedIdsNotifierProvider);

    void onChangedCheckbox(String id) {
      // ノティファイヤーを使って状態を変える
      final notifier = ref.read(checkedIdsNotifierProvider.notifier);
      notifier.onTapCheckbox(id);
    }

    final col = Column(
      children: [
        CheckboxListTile(
          activeColor: BrandColor.darkGrey,
          onChanged: (check) => onChangedCheckbox('A'),
          value: checkedIds.contains('A'),
          title: Text('バナナを買う'),
        ),
        CheckboxListTile(
          activeColor: BrandColor.darkGrey,
          onChanged: (check) => onChangedCheckbox('B'),
          value: checkedIds.contains('B'),
          title: Text('バナナを食べる'),
        ),
        CheckboxListTile(
          activeColor: BrandColor.darkGrey,
          onChanged: (check) => onChangedCheckbox('C'),
          value: checkedIds.contains('C'),
          title: Text('バナナを捨てる'),
        ),
      ],
    );

    return Scaffold(
      body: col,
    );
  }
}
