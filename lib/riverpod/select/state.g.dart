// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ShikokuNotifier)
final shikokuProvider = ShikokuNotifierProvider._();

final class ShikokuNotifierProvider
    extends $NotifierProvider<ShikokuNotifier, Shikoku> {
  ShikokuNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shikokuProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shikokuNotifierHash();

  @$internal
  @override
  ShikokuNotifier create() => ShikokuNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Shikoku value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Shikoku>(value),
    );
  }
}

String _$shikokuNotifierHash() => r'a66b2696dadca7d0a82afa5612db6f7b9a79b6a6';

abstract class _$ShikokuNotifier extends $Notifier<Shikoku> {
  Shikoku build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<Shikoku, Shikoku>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Shikoku, Shikoku>,
              Shikoku,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
