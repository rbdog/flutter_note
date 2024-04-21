import 'package:banana/qa/others/taku/taku_models_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TakuListWidget extends ConsumerWidget {
  final String userId;
  const TakuListWidget({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 卓モデルたち(AsyncValue)
    final asyncTakuList = ref.watch(takuModelsNotifierProvider);

    if (asyncTakuList.hasError) {
      return const Text('エラーのときに出すWidget');
    }
    if (!asyncTakuList.hasValue) {
      return const Text('データ準備中に出すWidget');
    }

    // 卓モデルたち
    final takuList = asyncTakuList.value!;

    /* 注意: ここで serviceを呼んだりしないこと */
    // build は予期せず何回も呼ばれることがあります
    // build の中でfirestoreからのデータを準備してはいけません
    // 代わりに taku_models_provider.dart ファイルを編集してください

    return Text('普通のリストWidget $takuList');
  }
}
