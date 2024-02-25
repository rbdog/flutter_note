// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$familyHash() => r'40f446e5eaa78897719573c5773d21a442ed50d3';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [family].
@ProviderFor(family)
const familyProvider = FamilyFamily();

/// See also [family].
class FamilyFamily extends Family<int> {
  /// See also [family].
  const FamilyFamily();

  /// See also [family].
  FamilyProvider call(
    String id,
  ) {
    return FamilyProvider(
      id,
    );
  }

  @override
  FamilyProvider getProviderOverride(
    covariant FamilyProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'familyProvider';
}

/// See also [family].
class FamilyProvider extends AutoDisposeProvider<int> {
  /// See also [family].
  FamilyProvider(
    String id,
  ) : this._internal(
          (ref) => family(
            ref as FamilyRef,
            id,
          ),
          from: familyProvider,
          name: r'familyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$familyHash,
          dependencies: FamilyFamily._dependencies,
          allTransitiveDependencies: FamilyFamily._allTransitiveDependencies,
          id: id,
        );

  FamilyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    int Function(FamilyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FamilyProvider._internal(
        (ref) => create(ref as FamilyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<int> createElement() {
    return _FamilyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FamilyProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FamilyRef on AutoDisposeProviderRef<int> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FamilyProviderElement extends AutoDisposeProviderElement<int>
    with FamilyRef {
  _FamilyProviderElement(super.provider);

  @override
  String get id => (origin as FamilyProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
