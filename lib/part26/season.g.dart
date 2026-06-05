// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 季節を状態管理

@ProviderFor(SeasonNotifier)
final seasonProvider = SeasonNotifierProvider._();

/// 季節を状態管理
final class SeasonNotifierProvider
    extends $NotifierProvider<SeasonNotifier, Season> {
  /// 季節を状態管理
  SeasonNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'seasonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$seasonNotifierHash();

  @$internal
  @override
  SeasonNotifier create() => SeasonNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Season value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Season>(value),
    );
  }
}

String _$seasonNotifierHash() => r'b9bb3ba7916d435e2ae5774315261bcbe544784f';

/// 季節を状態管理

abstract class _$SeasonNotifier extends $Notifier<Season> {
  Season build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<Season, Season>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Season, Season>,
              Season,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
