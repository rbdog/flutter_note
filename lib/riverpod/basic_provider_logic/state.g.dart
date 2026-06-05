// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AgeNotifier)
final ageProvider = AgeNotifierProvider._();

final class AgeNotifierProvider extends $NotifierProvider<AgeNotifier, int> {
  AgeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ageNotifierHash();

  @$internal
  @override
  AgeNotifier create() => AgeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$ageNotifierHash() => r'296c6c51ab9f7d06a71350cb6a2d81da97b8beda';

abstract class _$AgeNotifier extends $Notifier<int> {
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
