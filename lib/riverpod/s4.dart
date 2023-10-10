import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's4.g.dart';

@riverpod
class S4Notifier extends _$S4Notifier {
  @override
  Stream<String> build() {
    // 1秒ごとに通知を受け取る stream
    final controller = StreamController<String>();
    const sec1 = Duration(seconds: 1);
    final timer = Timer.periodic(sec1, (t) {
      controller.add('メッセージが${t.tick}件届きました');
    });
    // 4秒後にストップ
    const sec4 = Duration(seconds: 4);
    Future.delayed(sec4, () {
      timer.cancel();
      controller.sink.close();
    });
    return controller.stream;
  }

  // データを変更する関数
  void updateState() async {
    // 1秒まつ
    const sec1 = Duration(seconds: 1);
    await Future.delayed(sec1);
    // データを上書き
    state = const AsyncValue.data('メッセージが55件届きました');
    // 1秒まつ
    await Future.delayed(sec1);
    // データを上書き
    state = const AsyncValue.data('メッセージが99件届きました');
  }
}
