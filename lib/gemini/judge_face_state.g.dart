// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'judge_face_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FaceAgeNotifier)
final faceAgeProvider = FaceAgeNotifierProvider._();

final class FaceAgeNotifierProvider
    extends $AsyncNotifierProvider<FaceAgeNotifier, String?> {
  FaceAgeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'faceAgeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$faceAgeNotifierHash();

  @$internal
  @override
  FaceAgeNotifier create() => FaceAgeNotifier();
}

String _$faceAgeNotifierHash() => r'495a0f6fb5f6b99f322baaed3ae5668af1b6e109';

abstract class _$FaceAgeNotifier extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
