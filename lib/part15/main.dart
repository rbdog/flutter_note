import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
  最新のFlutterに対応するため、動画と少しコードが変わりました
*/

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// 選ばれたラジオボタンID
final radioIdProvider = StateProvider<String?>((ref) {
  // 最初はどれも選ばれていないので null
  return null;
});

// 選ばれたチェックボックスIDたち
final checkedIdsProvider = StateProvider<Set<String>>((ref) {
  // 最初は空っぽ {}
  return {};
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ラジオボタンID に合わせて画面を変化
    final radioId = ref.watch(radioIdProvider);
    // チェックボックスIDたち に合わせて画面を変化
    final checkedIds = ref.watch(checkedIdsProvider);

    // ラジオボタンが押されたときの関数
    void onChangedRadio(String? id) {
      ref.read(radioIdProvider.notifier).state = id!;
    }

    // チェックボックスが押された時の関数
    void onChangedCheckbox(String id) {
      final newSet = Set.of(checkedIds);
      if (checkedIds.contains(id)) {
        newSet.remove(id);
      } else {
        newSet.add(id);
      }
      ref.read(checkedIdsProvider.notifier).state = newSet;
    }

    // 縦に並べる
    final col = Column(
      children: [
        // ラジオボタンたち

        RadioListTile(
          groupValue: radioId,
          onChanged: onChangedRadio,
          value: 'A',
          title: const Text('ラジオボタンA'),
        ),

        RadioListTile(
          groupValue: radioId,
          onChanged: onChangedRadio,
          value: 'B',
          title: const Text('ラジオボタンB'),
        ),

        RadioListTile(
          groupValue: radioId,
          onChanged: onChangedRadio,
          value: 'C',
          title: const Text('ラジオボタンC'),
        ),

        // チェックボックス たち

        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('A'),
          value: checkedIds.contains('A'),
          title: const Text('チェックボックスA'),
        ),

        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('B'),
          value: checkedIds.contains('B'),
          title: const Text('チェックボックスB'),
        ),

        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('C'),
          value: checkedIds.contains('C'),
          title: const Text('チェックボックスC'),
        ),

        // OK ボタン

        ElevatedButton(
          onPressed: () {
            // 選ばれたラジオボタンIDを確認する
            debugPrint(radioId);
            // 選ばれたチェックボックスIDを確認する
            debugPrint(checkedIds.toString());
          },
          child: const Text('OK'),
        ),
      ],
    );

    return Scaffold(
      body: col,
    );
  }
}
