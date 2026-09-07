// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CountNotifier)
final countProvider = CountNotifierProvider._();

final class CountNotifierProvider
    extends $NotifierProvider<CountNotifier, int> {
  CountNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'countProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$countNotifierHash();

  @$internal
  @override
  CountNotifier create() => CountNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$countNotifierHash() => r'b8b8bd1bbc162f7117603b9ef3c3fb8c7efeaee9';

abstract class _$CountNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
