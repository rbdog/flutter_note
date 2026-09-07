// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///
/// FirebaseのユーザーをAsyncValue型で管理するプロバイダー
///

@ProviderFor(userChanges)
final userChangesProvider = UserChangesProvider._();

///
/// FirebaseのユーザーをAsyncValue型で管理するプロバイダー
///

final class UserChangesProvider
    extends $FunctionalProvider<AsyncValue<User?>, User?, Stream<User?>>
    with $FutureModifier<User?>, $StreamProvider<User?> {
  ///
  /// FirebaseのユーザーをAsyncValue型で管理するプロバイダー
  ///
  UserChangesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userChangesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userChangesHash();

  @$internal
  @override
  $StreamProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<User?> create(Ref ref) {
    return userChanges(ref);
  }
}

String _$userChangesHash() => r'81b2fd28aa8f519fa0fb0fabe57d9facc43d9baf';

///
/// ユーザー
///

@ProviderFor(user)
final userProvider = UserProvider._();

///
/// ユーザー
///

final class UserProvider extends $FunctionalProvider<User?, User?, User?>
    with $Provider<User?> {
  ///
  /// ユーザー
  ///
  UserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userHash();

  @$internal
  @override
  $ProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  User? create(Ref ref) {
    return user(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(User? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<User?>(value),
    );
  }
}

String _$userHash() => r'e55fe8fb0e84fc63f9a40e6a1af663b5fadcf992';

///
/// サインイン中かどうか
///

@ProviderFor(signedIn)
final signedInProvider = SignedInProvider._();

///
/// サインイン中かどうか
///

final class SignedInProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  ///
  /// サインイン中かどうか
  ///
  SignedInProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signedInProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signedInHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return signedIn(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$signedInHash() => r'582365461d843da2946a06b9e7245cfdbb50a00c';

///
/// ユーザーID
///

@ProviderFor(userId)
final userIdProvider = UserIdProvider._();

///
/// ユーザーID
///

final class UserIdProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  ///
  /// ユーザーID
  ///
  UserIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userIdHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return userId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$userIdHash() => r'f835dc81360c05e549768b0c2c67b9697a7accd2';
