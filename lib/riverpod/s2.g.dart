// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's2.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(S2Notifier)
final s2Provider = S2NotifierProvider._();

final class S2NotifierProvider
    extends $NotifierProvider<S2Notifier, List<String>> {
  S2NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r's2Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$s2NotifierHash();

  @$internal
  @override
  S2Notifier create() => S2Notifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$s2NotifierHash() => r'ff09137a1153d9eb83b7281a8df842b4a15d3c1d';

abstract class _$S2Notifier extends $Notifier<List<String>> {
  List<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
