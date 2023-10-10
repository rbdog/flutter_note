import 'package:freezed_annotation/freezed_annotation.dart';
part 'abc_list.freezed.dart';

// ABC を並べたリスト

@freezed
abstract class AbcList with _$AbcList {
  factory AbcList(List<String> values) = _AbcList;
}
