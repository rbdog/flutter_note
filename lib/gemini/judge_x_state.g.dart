// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'judge_x_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PersonCharNotifier)
final personCharProvider = PersonCharNotifierProvider._();

final class PersonCharNotifierProvider
    extends $AsyncNotifierProvider<PersonCharNotifier, String?> {
  PersonCharNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'personCharProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$personCharNotifierHash();

  @$internal
  @override
  PersonCharNotifier create() => PersonCharNotifier();
}

String _$personCharNotifierHash() =>
    r'18ab3d287f3ccdf4adb70329c6ea8439b059052e';

abstract class _$PersonCharNotifier extends $AsyncNotifier<String?> {
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
