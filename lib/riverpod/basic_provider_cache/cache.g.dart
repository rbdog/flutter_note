// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cacheAverage)
final cacheAverageProvider = CacheAverageProvider._();

final class CacheAverageProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  CacheAverageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cacheAverageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cacheAverageHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cacheAverage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cacheAverageHash() => r'edf032a98ec86c6f13a64df35c5e596dca686abc';

@ProviderFor(cacheMax)
final cacheMaxProvider = CacheMaxProvider._();

final class CacheMaxProvider extends $FunctionalProvider<int, int, int>
    with $Provider<int> {
  CacheMaxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cacheMaxProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cacheMaxHash();

  @$internal
  @override
  $ProviderElement<int> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  int create(Ref ref) {
    return cacheMax(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$cacheMaxHash() => r'e81d9060bcd428bbd9f16eebaec119c9b372a083';
