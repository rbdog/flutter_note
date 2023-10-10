import 'package:flutter/material.dart'; // Flutterのコードを書く
import 'dart:convert'; // これを書くとjsonDecodeが使える
import 'package:flutter/services.dart'; // これを書くとStubが使える
import 'package:banana/part19/vegetable.dart'; // 別のファイルに書いたベジタブルを使う
import 'package:banana/part19/pack.dart'; // 別のファイルに書いた野菜パックを使う
import 'package:banana/part19/recipe.dart'; //別のファイルに書いたレシピを使う

/// メイン関数
void main() {
  test1();
}

// レベル1 (JSONを受け取る)
void test1() async {
  // Stub を使う準備
  WidgetsFlutterBinding.ensureInitialized();
  // JSON <--- Stub
  final json = await rootBundle.loadString('stub/level1.json');
  // JsonMap <--- JSON
  final map = jsonDecode(json);
  // 野菜データ <--- JsonMap
  final data = Vegetable.fromJson(map);
  // データの中身を確認する
  debugPrint('データの中身は $data');
}

// レベル1 (JSONを送る)
void test2() async {
  // 野菜データを作る
  const data = Vegetable(
    name: 'キャベツ',
    color: 'みどり',
    season: '春と冬',
  );
  // JsonMap <--- データ
  final map = data.toJson();
  // JSON <--- JsonMap
  final json = jsonEncode(map);
  // JSONの中身を確認する
  debugPrint('JSONの中身は $json');
}

// レベル2 (JSONを受け取る)
void test3() async {
  // Stub を使う準備
  WidgetsFlutterBinding.ensureInitialized();
  // JSON <--- Stub
  final json = await rootBundle.loadString('stub/level2.json');
  // JsonMap <--- JSON
  final map = jsonDecode(json);
  // 野菜パック <--- JsonMap
  final data = Pack.fromJson(map);
  // データの中身を確認する
  debugPrint('データの中身は $data');
}

// レベル2 (JSONを送る)
void test4() async {
  // 適当な野菜
  const content = Vegetable(
    name: 'アボガド',
    color: '濃いみどり',
    season: '秋',
  );
  // 野菜パックのデータ
  const data = Pack(
    size: '中',
    price: 800,
    content: content,
  );
  // JsonMap <--- データ
  final map = data.toJson();
  // JSON <--- JsonMap
  final json = jsonEncode(map);
  // JSONの中身を確認する
  debugPrint('JSONの中身は $json');
}

// レベル3 (JSONを受け取る)
void test5() async {
  // Stub を使う準備
  WidgetsFlutterBinding.ensureInitialized();
  // JSON <--- Stub
  final json = await rootBundle.loadString('stub/level3.json');
  // JsonMap <--- JSON
  final map = jsonDecode(json);
  // レシピのデータ <--- JsonMap
  final data = Recipe.fromJson(map);
  // データの中身を確認する
  debugPrint('データの中身は $data');
}

// レベル3 (JSONを送る)
void test6() async {
  // レシピに使う適当な野菜たち
  const vegetables = [
    Vegetable(
      name: 'しょうが',
      color: '黄色',
      season: '秋',
    ),
    Vegetable(
      name: 'かぶ',
      color: '白',
      season: '冬',
    ),
    Vegetable(
      name: 'たけのこ',
      color: '茶色',
      season: '春',
    ),
  ];
  // レシピのデータ
  const data = Recipe(
    title: '健康スープ',
    calories: 150,
    vegetables: vegetables,
  );
  // JsonMap <--- データ
  final map = data.toJson();
  // JSON <--- JsonMap
  final json = jsonEncode(map);
  // JSONの中身を確認する
  debugPrint('JSONの中身は $json');
}

/*
*
*  ### 豆知識 ###
*    final json = jsonEncode(map);
*    の代わりに
*    final json = const JsonEncoder.withIndent('  ').convert(map);
*    を使うと、
*    中身の確認のときに見やすくなるよ!
*
*/
