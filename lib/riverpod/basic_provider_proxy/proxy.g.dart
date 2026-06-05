// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxy.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(P1Notifier)
final p1Provider = P1NotifierProvider._();

final class P1NotifierProvider extends $NotifierProvider<P1Notifier, String> {
  P1NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'p1Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$p1NotifierHash();

  @$internal
  @override
  P1Notifier create() => P1Notifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$p1NotifierHash() => r'b11b85f94b78ab2da5a9055ac153051930eec529';

abstract class _$P1Notifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(P2Notifier)
final p2Provider = P2NotifierProvider._();

final class P2NotifierProvider extends $NotifierProvider<P2Notifier, String> {
  P2NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'p2Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$p2NotifierHash();

  @$internal
  @override
  P2Notifier create() => P2Notifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$p2NotifierHash() => r'6066c644570fd6443a3df58b7e9e8b17a00bcc01';

abstract class _$P2Notifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(P3Notifier)
final p3Provider = P3NotifierProvider._();

final class P3NotifierProvider extends $NotifierProvider<P3Notifier, String> {
  P3NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'p3Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$p3NotifierHash();

  @$internal
  @override
  P3Notifier create() => P3Notifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$p3NotifierHash() => r'5f61a84b402731b1cf00c5d7302191f2d5f3e02c';

abstract class _$P3Notifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(proxy)
final proxyProvider = ProxyProvider._();

final class ProxyProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  ProxyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'proxyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$proxyHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return proxy(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$proxyHash() => r'f1be552fb43fe454dd080e55096dc4d53f10282f';
