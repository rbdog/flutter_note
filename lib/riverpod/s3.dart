import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's3.g.dart';

@riverpod
class S3Notifier extends _$S3Notifier {
  @override
  Future<String> build() async {
    // 3秒まつ
    const sec3 = Duration(seconds: 3);
    await Future.delayed(sec3);
    // 最初のデータ
    return '最初のデータ';
  }

  // データを変更する関数
  void updateState() async {
    // データを上書き
    state = const AsyncValue.loading();
    // 3秒まつ
    const sec3 = Duration(seconds: 3);
    await Future.delayed(sec3);
    // データを上書き
    state = const AsyncValue.data('新しいデータ');
  }
}
