import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

@Riverpod(keepAlive: true)
class ScoreNotifier extends _$ScoreNotifier {
  @override
  List<int> build() {
    // 5教科の点数
    return [
      // 国語
      91,
      // 数学
      85,
      // 理科
      88,
      // 社会
      94,
      // 英語
      92,
    ];
  }
}
