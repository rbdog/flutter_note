/// ToDoモデル
class TodoModel {
  const TodoModel({
    required this.id,
    required this.memo,
    required this.isChecked,
  });

  /// ID ('A'とか'B'とか他と被らないもの)
  final String id;

  /// メモ
  final String memo;

  /// チェックされているかどうか (true | false)
  final bool isChecked;
}
