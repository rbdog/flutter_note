// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's4.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(S4Notifier)
final s4Provider = S4NotifierProvider._();

final class S4NotifierProvider
    extends $StreamNotifierProvider<S4Notifier, String> {
  S4NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r's4Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$s4NotifierHash();

  @$internal
  @override
  S4Notifier create() => S4Notifier();
}

String _$s4NotifierHash() => r'a1c3249eca553d6fb1023cd6651496e539d959f2';

abstract class _$S4Notifier extends $StreamNotifier<String> {
  Stream<String> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
