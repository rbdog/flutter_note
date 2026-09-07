// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taku_models_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TakuModelsNotifier)
final takuModelsProvider = TakuModelsNotifierProvider._();

final class TakuModelsNotifierProvider
    extends $AsyncNotifierProvider<TakuModelsNotifier, TakuModelList> {
  TakuModelsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'takuModelsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$takuModelsNotifierHash();

  @$internal
  @override
  TakuModelsNotifier create() => TakuModelsNotifier();
}

String _$takuModelsNotifierHash() =>
    r'd1bc625233c591580977fc581bfd1b5451829101';

abstract class _$TakuModelsNotifier extends $AsyncNotifier<TakuModelList> {
  FutureOr<TakuModelList> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TakuModelList>, TakuModelList>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TakuModelList>, TakuModelList>,
              AsyncValue<TakuModelList>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
