//
// できれば freezed で作った方が安全
//

/// Todo 1つ分のデータを入れておくクラス
class TodoModel {
  const TodoModel({
    required this.id,
    required this.memo,
  });

  /// ID
  final String id;

  /// Todo の中に書くメモ
  final String memo;
}

// typedef を使えば List<TodoModel> と書く代わりに TodoList とかけるようになる
// これで <> が少し減ってスッキリしたコードになる
typedef TodoList = List<TodoModel>;
