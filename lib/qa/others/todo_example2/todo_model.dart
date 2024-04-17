/// ToDoモデル
class TodoModel {
  const TodoModel({
    required this.id,
    required this.memo,
  });

  /// ID ('A'とか'B'とか他と被らないもの)
  final String id;

  /// メモ
  final String memo;
}
