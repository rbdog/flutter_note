// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's1.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(S1Notifier)
final s1Provider = S1NotifierProvider._();

final class S1NotifierProvider extends $NotifierProvider<S1Notifier, int> {
  S1NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r's1Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$s1NotifierHash();

  @$internal
  @override
  S1Notifier create() => S1Notifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$s1NotifierHash() => r'50807122c169d62988d5d4499fe8db162e4931b5';

abstract class _$S1Notifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
