import 'package:flutter/material.dart';

/// メイン関数
void main() {
  // ホーム画面
  const home = Home();
  // アプリ
  const app = MaterialApp(home: home);
  runApp(app);
}

/// 馬のモデルクラス
class Horse {
  // 名前
  final String name;
  // アイコン画像
  final String iconUri;

  // コンストラクタ
  Horse(this.name, this.iconUri);
}

/// カードにしたいモデルたち
final models = [
  Horse('ナリタブライアン', 'horse1.png'),
  Horse('スペシャルウィーク', 'horse2.png'),
  Horse('オグリキャップ', 'horse3.png'),
  Horse('サイレンススズカ', 'horse4.png'),
  Horse('トウカイテイオー', 'horse5.png'),
];

/// 馬のカード Widget
class HorseCard extends StatelessWidget {
  const HorseCard({
    super.key,
    required this.model,
  });
  // データが入ったモデル
  final Horse model;

  @override
  Widget build(BuildContext context) {
    // 画像
    final img = SizedBox(
      height: 100,
      child: Image.asset(
        'assets/images/${model.iconUri}',
      ),
    );

    // 名前
    final text = Text(
      model.name,
      style: const TextStyle(fontSize: 20),
    );

    // 画像と名前を縦に並べる
    final imgAndText = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        img,
        text,
      ],
    );

    // カード部分を作るコンテナ
    return Container(
      decoration: BoxDecoration(
        // 色
        color: Colors.orange,
        // 角丸
        borderRadius: BorderRadius.circular(20),
        // 影
        boxShadow: [
          BoxShadow(
            // 影の設定
            color: Colors.black.withOpacity(0.2), //色
            spreadRadius: 2, // 広がりの大きさ
            blurRadius: 2, // ぼかしの強さ
            offset: const Offset(0, 2), // 方向
          ),
        ],
      ),
      child: imgAndText,
    );
  }
}

// モデル => ウィジェット に変換する関数
Widget modelToWidget(Horse model) {
  // ページの部分
  return Container(
    // カードの周りに 10 ずつスペースを空ける
    padding: const EdgeInsets.all(10),
    // 中身は カード
    child: HorseCard(model: model),
  );
  // カードを使う
}

// ホーム画面
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // カルーセル
    final carousel = PageView.builder(
      // カルーセルのコントローラー
      controller: PageController(
        // 左右のカードがどのくらい見えるかのバランスを決める
        viewportFraction: 0.6,
      ),
      // カードの数 = モデルの数
      itemCount: models.length,
      // モデルをWidgetに変換する関数
      itemBuilder: (c, i) => modelToWidget(models[i]),
    );

    // 画面
    return Scaffold(
      // 真ん中
      body: Center(
        // 横長のコンテナ
        child: Container(
          height: 200,
          color: Colors.white,
          child: carousel,
        ),
      ),
    );
  }
}
