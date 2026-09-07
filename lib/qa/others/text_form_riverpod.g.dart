// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_form_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// -----------------------------------------------------------
/// ノティファイヤー & 自動で作られるプロバイダー - 文字を保存しておく
/// -----------------------------------------------------------

@ProviderFor(TextNotifier)
final textProvider = TextNotifierProvider._();

/// -----------------------------------------------------------
/// ノティファイヤー & 自動で作られるプロバイダー - 文字を保存しておく
/// -----------------------------------------------------------
final class TextNotifierProvider
    extends $NotifierProvider<TextNotifier, String> {
  /// -----------------------------------------------------------
  /// ノティファイヤー & 自動で作られるプロバイダー - 文字を保存しておく
  /// -----------------------------------------------------------
  TextNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'textProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$textNotifierHash();

  @$internal
  @override
  TextNotifier create() => TextNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$textNotifierHash() => r'13d317c5fd238710c716ac65960298cc23d6a99c';

/// -----------------------------------------------------------
/// ノティファイヤー & 自動で作られるプロバイダー - 文字を保存しておく
/// -----------------------------------------------------------

abstract class _$TextNotifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
