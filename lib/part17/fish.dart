import 'package:freezed_annotation/freezed_annotation.dart';
part 'fish.freezed.dart';

// たくさんのデータをまとめた魚クラス

@freezed
class Fish with _$Fish {
  const factory Fish({
    // 名前
    required String name,
    // 大きさ
    required int size,
    // 値段
    required int price,
  }) = _Fish;
}
