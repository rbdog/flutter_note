import 'package:banana/qa/others/taku/taku_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'taku_models_provider.g.dart';

typedef TakuModelList = List<TakuModel>;

@riverpod
class TakuModelsNotifier extends _$TakuModelsNotifier {
  @override
  Future<TakuModelList> build() async {
    // 最初に表示するデータ (ここで firebase からとってきたりする)
    const initialModels = [
      TakuModel(id: 'ID_001', xxx: 'ここはID以外のデータ'),
      TakuModel(id: 'ID_002', xxx: 'ここはID以外のデータ'),
      TakuModel(id: 'ID_003', xxx: 'ここはID以外のデータ'),
    ];
    return initialModels;
  }

  /// 新しい Taku を追加する
  Future<void> addNewTaku(TakuModel newModel) async {
    // エラーチェック
    if (state.value == null) {
      // エラー
      throw Exception(
        'まだ最初のデータがないのに追加しようとしました',
      );
    }

    /* ここでserviceクラスを呼び出してfirebaseと通信したり */

    // 古いモデルたち
    final oldModels = state.value!;
    // 新しいモデルたち (List.of でコピーしてから使う)
    final newModels = List.of(oldModels);
    // データに追加
    newModels.add(newModel);

    // 状態を上書き
    state = AsyncValue.data(newModels);
  }
}
