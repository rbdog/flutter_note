// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DrinkNotifier)
final drinkProvider = DrinkNotifierProvider._();

final class DrinkNotifierProvider
    extends $AsyncNotifierProvider<DrinkNotifier, String> {
  DrinkNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'drinkProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$drinkNotifierHash();

  @$internal
  @override
  DrinkNotifier create() => DrinkNotifier();
}

String _$drinkNotifierHash() => r'b058b43801d5aaf750fb38611665d8ff236b7462';

abstract class _$DrinkNotifier extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
