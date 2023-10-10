import 'package:flutter/material.dart';

// pubspec.yaml に flutter_slidable を追加しておいてください
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  const home = Home();
  const app = MaterialApp(home: home);
  runApp(app);
}

// 使いやすくアレンジした Slidable
// --- ここから そのままコピペでOK ---
class MySlidable extends StatelessWidget {
  const MySlidable({
    super.key,
    required this.builder,
    this.left = const [],
    this.right = const [],
  });
  final Widget Function(SlidableController controller) builder;
  final List<SlidableAction> left;
  final List<SlidableAction> right;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: left.isEmpty
          ? null
          : ActionPane(
              motion: const ScrollMotion(),
              children: left,
            ),
      endActionPane: right.isEmpty
          ? null
          : ActionPane(
              motion: const ScrollMotion(),
              children: right,
            ),
      child: Builder(
        builder: (context) {
          final controller = Slidable.of(context)!;
          return builder(controller);
        },
      ),
    );
  }
}
// --- ここまで そのままコピペでOK ---

// 表示したいモデルたち (今回は適当な文字たち)
final models = [
  'りんご',
  'ブドウ',
  'レモン',
  'スイカ',
];

// ホーム画面
class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // リストに並べる
    final list = ListView(
      // モデルたちの数だけ並べる
      children: List<Widget>.generate(
        models.length,
        (index) {
          // モデル1つ
          final model = models[index];
          return MySlidable(
            // 左アクションたち
            // * 右に置きたい時は left ではなく right を使う
            left: [
              // 左アクション1
              SlidableAction(
                onPressed: (context) {
                  debugPrint('左アクション1 がタップされました');
                },
                backgroundColor: Colors.red,
                label: '左アクション1',
              ),
              // 左アクション2
              SlidableAction(
                onPressed: (context) {
                  debugPrint('左アクション2 がタップされました');
                },
                backgroundColor: Colors.green,
                label: '左アクション2',
              ),
            ],
            // 本体
            builder: (controller) {
              //
              // ここは自由なWidget
              //

              // ListTile や Button や GestureDetector を使ってタップできるようにする
              return ListTile(
                onTap: () {
                  debugPrint('本体がタップされました。左側をオープンします');

                  controller.openStartActionPane(); // この関数で左側をオープン
                  // controller.openEndActionPane(); // この関数で右側をオープン
                },
                // 適当にモデルの文字を表示しておく
                title: Text(model),
              );
            },
          );
        },
      ),
    );

    // 画面1つ
    return Scaffold(
      body: list,
    );

    // * 同時にたくさんオープンさせないようにバリアする時は SlidableAutoCloseBehavior を使う

    // 画面1つ
    // return Scaffold(
    //   body: SlidableAutoCloseBehavior(
    //     child: list,
    //   ),
    // );
  }
}
