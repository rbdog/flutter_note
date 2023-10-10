import 'package:flutter/material.dart';

// ツイート
class Tweet {
  // ユーザーの名前
  final String userName;
  // アイコン画像
  final String iconUrl;
  // 文章メッセージ
  final String text;
  // 送信日時
  final String createdAt;

  // コンストラクタ
  Tweet(this.userName, this.iconUrl, this.text, this.createdAt);
}

// 適当なモデル
final models = [
  Tweet('ルフィ', 'icon1.png', '海賊王におれはなる！', '2022/1/1'),
  Tweet('ゾロ', 'icon2.png', 'おれはもう！二度と敗けねェから！', '2022/1/2'),
  Tweet('ナミ', 'icon3.png', 'もう背中向けられないじゃないっ！', '2022/1/3'),
  Tweet('ウソップ', 'icon4.png', 'お前らの”伝説のヒーロー”になってやる！', '2022/1/4'),
  Tweet('サンジ', 'icon5.png', 'たとえ死んでもおれは女は蹴らん・・・！', '2022/1/5'),
  Tweet('チョッパー', 'icon6.png', '人間ならもっと自由だ！', '2022/1/6'),
  Tweet('ビビ', 'icon7.png', 'もう一度仲間と呼んでくれますか!?', '2022/1/7'),
  Tweet('ロビン', 'icon8.png', '生ぎたいっ！', '2022/1/8'),
  Tweet('フランキー', 'icon9.png', '存在することは罪にはならねェ！', '2022/1/9'),
  Tweet('ブルック', 'icon10.png', '男が一度・・・必ず帰ると言ったのだから！', '2022/1/10'),
  Tweet('ジンベイ', 'icon11.png', '失ったものばかり数えるな！', '2022/1/11'),
  Tweet('シャンクス', 'icon1.png', 'この帽子をお前に預ける', '2022/2/1'),
  Tweet('ヒルルク', 'icon2.png', '違う!…人に忘れられた時さ…!', '2022/2/2'),
  Tweet('ドクタークレハ', 'icon3.png', '優しいだけじゃ人は救えないんだ!', '2022/2/3'),
  Tweet('ティーチ', 'icon4.png', '人の夢は!終わらねェ!', '2022/2/4'),
  Tweet('ガンフォール', 'icon5.png', '人の生きるこの世界に“神”などおらぬ!', '2022/2/5'),
  Tweet('ボンクレー', 'icon6.png', '理由なんざ他にゃいらねェ!', '2022/2/6'),
  Tweet('イワンコフ', 'icon7.png', '“奇跡”ナメるんじゃないよォ!', '2022/2/7'),
  Tweet('ニューゲート', 'icon8.png', 'バカな息子をそれでも愛そう・・・', '2022/1/8'),
  Tweet('エース', 'icon9.png', '愛してくれて・・・ありがとう', '2022/2/9'),
  Tweet('ロー', 'icon10.png', '取るべきイスは…必ず奪う!', '2022/2/10'),
  Tweet('サボ', 'icon11.png', '以後ルフィのバックにはおれがついてる!', '2022/2/11'),
  Tweet('バルトロメオ', 'icon1.png', 'この子分盃!勝手に頂戴いたしますだべ!', '2022/3/1'),
];

// モデル => ウィジェット に変換する
Widget modelToWidget(Tweet model) {
  // ユーザーアイコン
  final icon = Container(
    margin: const EdgeInsets.all(20),
    width: 60,
    height: 60,
    // 画像を丸くする
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Image.asset('assets/images/${model.iconUrl}'),
    ),
  );

  // 名前と時間
  final metaText = Container(
    padding: const EdgeInsets.all(6),
    height: 40,
    alignment: Alignment.centerLeft,
    child: Text(
      '${model.userName}    ${model.createdAt}',
      style: const TextStyle(color: Colors.grey),
    ),
  );

  // 本文
  final text = Container(
    padding: const EdgeInsets.all(8),
    alignment: Alignment.centerLeft,
    child: Text(
      model.text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );

  // 部品を並べる
  return Container(
    padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
      // 全体を青い枠線で囲む
      border: Border.all(color: Colors.blue),
      color: Colors.white,
    ),
    width: double.infinity,
    // 高さ
    height: 120,
    child: Row(
      children: [
        // アイコン
        icon,
        Expanded(
          child: Column(
            children: [
              // 名前と時間
              metaText,
              // 本文
              text,
            ],
          ),
        ),
      ],
    ),
  );
}

// メイン関数
void main() {
  // ツイートのリスト
  final list = ListView.builder(
    itemCount: models.length,
    itemBuilder: (c, i) => modelToWidget(models[i]),
  );

  final con = Center(
    child: SizedBox(
      height: 400,
      child: list,
    ),
  );

  // 画面
  final sca = Scaffold(
    backgroundColor: Colors.grey,
    body: con,
  );

  // アプリ
  final app = MaterialApp(home: sca);
  // アプリを動かす
  runApp(app);
}
