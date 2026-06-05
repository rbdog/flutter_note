// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// J-POP の数を監視

@ProviderFor(jpopCount)
final jpopCountProvider = JpopCountProvider._();

/// J-POP の数を監視

final class JpopCountProvider
    extends $FunctionalProvider<AsyncValue<int>, int, Stream<int>>
    with $FutureModifier<int>, $StreamProvider<int> {
  /// J-POP の数を監視
  JpopCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'jpopCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$jpopCountHash();

  @$internal
  @override
  $StreamProviderElement<int> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<int> create(Ref ref) {
    return jpopCount(ref);
  }
}

String _$jpopCountHash() => r'cbc4d41adc2a36905021b3204269dc349c84f561';
