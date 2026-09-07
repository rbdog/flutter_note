// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoModelsNotifier)
final todoModelsProvider = TodoModelsNotifierProvider._();

final class TodoModelsNotifierProvider
    extends $NotifierProvider<TodoModelsNotifier, List<TodoModel>> {
  TodoModelsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoModelsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoModelsNotifierHash();

  @$internal
  @override
  TodoModelsNotifier create() => TodoModelsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TodoModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TodoModel>>(value),
    );
  }
}

String _$todoModelsNotifierHash() =>
    r'42514d97db9d405d31e7c62b98bbd6cf440f7747';

abstract class _$TodoModelsNotifier extends $Notifier<List<TodoModel>> {
  List<TodoModel> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<List<TodoModel>, List<TodoModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<TodoModel>, List<TodoModel>>,
              List<TodoModel>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
