// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ScoreNotifier)
final scoreProvider = ScoreNotifierProvider._();

final class ScoreNotifierProvider
    extends $NotifierProvider<ScoreNotifier, List<int>> {
  ScoreNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'scoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$scoreNotifierHash();

  @$internal
  @override
  ScoreNotifier create() => ScoreNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<int> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<int>>(value),
    );
  }
}

String _$scoreNotifierHash() => r'2a3613fe7be14039a69511a8498d7fc36b674d17';

abstract class _$ScoreNotifier extends $Notifier<List<int>> {
  List<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<int>, List<int>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<int>, List<int>>,
              List<int>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
