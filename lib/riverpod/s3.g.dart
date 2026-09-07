// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(S3Notifier)
final s3Provider = S3NotifierProvider._();

final class S3NotifierProvider
    extends $AsyncNotifierProvider<S3Notifier, String> {
  S3NotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r's3Provider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$s3NotifierHash();

  @$internal
  @override
  S3Notifier create() => S3Notifier();
}

String _$s3NotifierHash() => r'149224841406b70e6734f9dcbb51f056c2feb46d';

abstract class _$S3Notifier extends $AsyncNotifier<String> {
  FutureOr<String> build();
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
