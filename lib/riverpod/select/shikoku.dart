// freezed 使えばもっと短く書ける

// 四国
class Shikoku {
  const Shikoku({
    required this.kagawa,
    required this.tokushima,
    required this.kochi,
    required this.ehime,
  });

  // 香川
  final int kagawa;
  // 徳島
  final int tokushima;
  // 高知
  final int kochi;
  // 愛媛
  final int ehime;

  /// copyWith
  Shikoku copyWith({
    int? kagawa,
    int? tokushima,
    int? kochi,
    int? ehime,
  }) {
    return Shikoku(
      kagawa: kagawa ?? this.kagawa,
      tokushima: tokushima ?? this.tokushima,
      kochi: kochi ?? this.kochi,
      ehime: ehime ?? this.ehime,
    );
  }

  /// ==
  @override
  bool operator ==(Object other) {
    return other is Shikoku &&
        other.runtimeType == runtimeType &&
        other.kagawa == kagawa &&
        other.tokushima == tokushima &&
        other.kochi == kochi &&
        other.ehime == ehime;
  }

  /// hashCode
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      kagawa,
      tokushima,
      kochi,
      ehime,
    );
  }
}
