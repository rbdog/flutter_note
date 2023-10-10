import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'season.g.dart';

/// 季節
enum Season {
  spring, // 春
  summer, // 夏
  autumn, // 秋
  winter, // 冬
}

/// 季節を状態管理
@riverpod
class SeasonNotifier extends _$SeasonNotifier {
  @override
  Season build() {
    // 春からスタート
    return Season.spring;
  }

  /// 季節を変更する
  void updateSeason(Season season) {
    state = season;
  }
}
