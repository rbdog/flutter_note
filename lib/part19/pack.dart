// 他のファイルに書いた Vegetable を使うために import
import 'package:banana/part19/vegetable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'pack.freezed.dart';
part 'pack.g.dart';

// レベル2 野菜パック
@freezed
class Pack with _$Pack {
  const factory Pack({
    // 大きさ
    required String size,
    // 値段
    required int price,
    // 中身の野菜
    required Vegetable content,
  }) = _Pack;
  factory Pack.fromJson(Map<String, dynamic> json) => _$PackFromJson(json);
}
