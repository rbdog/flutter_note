//
// # Twitterでもらった質問への回答
//
// - ConsumerStatefulWidget を使う
// - StateProvider を使う
//

// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

// * 元々使われていた Statefulウィジェット と,
// * riverpod で使うための Consumerウィジェット を2つ合わせた
// * ConsumerStatefulウィジェット というものを使う
class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

// * State の代わりに ConsumerState を使う
class _MyHomePageState extends ConsumerState<MyHomePage> {
  // * ここにあったステートたちは一番下に書いたプロバイダーのところへ持って行った
  //   - startBox
  //   - startText
  //   - endBox
  //   - endText

  // * コントローラーは プロバイダー を無視して ここに書いたままでOK
  TextEditingController formController = TextEditingController();
  // * グローバルキーは プロバイダー を無視して ここに書いたままでOK
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // * ref.watch を使ってプロバイダーの中から中身を取り出す
    final startBox = ref.watch(startBoxProvider);
    final startText = ref.watch(startTextProvider);
    final endBox = ref.watch(endBoxProvider);
    final endText = ref.watch(endTextProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 80,
              child: Form(
                key: _formkey,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    width: 250,
                    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~入力欄
                    child: TextFormField(
                      controller: formController,

                      // onChanged: (String value) {
                      // },
                      // 入力されたテキストの値を受け取る（valueが入力されたテキスト）
                      //   onChanged: (text) {
                      // startText = text;},
                      decoration: InputDecoration(
                        labelText: "リスト名追加",
                        border: OutlineInputBorder(),
                        hintText: ('リスト名を入力してください'),
                        hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      validator: (value) {
                        // 空欄の際に注意喚起をする
                        if (value == null || value.isEmpty) {
                          return '必須項目が入力されていません';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 30),
                  SizedBox(
                    height: 65,
                    width: 65,
                    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~追加ボタン
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          final input = formController.text;

                          // * このコードは要らなくなった
                          // startBox.add(formController.text);

                          // * 代わりにノティファイアーを使って状態を変える
                          final notif = ref.read(startBoxProvider.notifier);
                          notif.state.add(input);

                          // 記入したテキストを下に表示する（確認用に一応つける）
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('$inputを保存しました')),
                          );
                        }
                        setState(() {});
                        // 入力後TextField内をクリア
                        formController.clear();
                      },
                      child: Text(
                        '追加',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 5),
            Text(
              '未了の予定',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 350,
              height: 280,
              child: Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 3),
                child: ListView.builder(
                    itemCount: startBox.length,
                    itemBuilder: (context, index) {
                      final box = startBox[index];
                      // 入れたテキストを反転
                      // final item = startBox.reversed.toList()[index];
                      return Card(
                        child: ListTile(
                          title: Text(box),
                          trailing: Wrap(
                            children: [
                              // ゴミ箱ボタンの設置、わかりやすいように青に変更
                              IconButton(
                                  icon: Icon(Icons.delete_outline_outlined,
                                      color: Colors.blue),
                                  onPressed: () {
                                    // 削除
                                    startBox.removeAt(index);
                                    setState(() {});
                                  }),
                              //完了移動ボタン
                              IconButton(
                                  icon: Icon(Icons.check_circle_outline,
                                      color: Colors.red),
                                  onPressed: () {
                                    //endBoxにstartBoxに入っていたデータを渡す。その後startBoxの中身を削除する。
                                    endBox.add(startBox[index]);
                                    startBox.removeAt(index);
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '完了した予定',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 350,
              height: 280,
              child: Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 3),
                child: ListView.builder(
                    itemCount: endBox.length,
                    itemBuilder: (context, index) {
                      final box = endBox[index];
                      return Card(
                        child: ListTile(
                          title: Text(box),
                          trailing: Wrap(
                            children: [
                              // 上記のゴミ箱ボタンと同じデザイン
                              IconButton(
                                  icon: Icon(
                                    Icons.delete_outline_outlined,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    endBox.removeAt(index);
                                    setState(() {});
                                  }),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// * 変化させたいものを入れておくプロバイダーたち

// 未了の入れ物
final startBoxProvider = StateProvider<List<String>>((ref) {
  return [];
});

final startTextProvider = StateProvider<String>((ref) {
  return "";
});

final endBoxProvider = StateProvider<List<String>>((ref) {
  return [];
});

final endTextProvider = StateProvider<String>((ref) {
  return "";
});
