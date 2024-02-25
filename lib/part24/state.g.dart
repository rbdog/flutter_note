// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userChangesHash() => r'4b418a07a9bb38d37b0f5fe2676bb7f58267eaeb';

///
/// FirebaseのユーザーをAsyncValue型で管理するプロバイダー
///
///
/// Copied from [userChanges].
@ProviderFor(userChanges)
final userChangesProvider = AutoDisposeStreamProvider<User?>.internal(
  userChanges,
  name: r'userChangesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userChangesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserChangesRef = AutoDisposeStreamProviderRef<User?>;
String _$userHash() => r'3cc9ecd667fcb1fd39e74d498ecab726c98cf46a';

///
/// ユーザー
///
///
/// Copied from [user].
@ProviderFor(user)
final userProvider = AutoDisposeProvider<User?>.internal(
  user,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRef = AutoDisposeProviderRef<User?>;
String _$signedInHash() => r'ad977544c865550a5f87cfb21ad0a59169bcdd7b';

///
/// サインイン中かどうか
///
///
/// Copied from [signedIn].
@ProviderFor(signedIn)
final signedInProvider = AutoDisposeProvider<bool>.internal(
  signedIn,
  name: r'signedInProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signedInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignedInRef = AutoDisposeProviderRef<bool>;
String _$userIdHash() => r'b04b6e432625c4a9d6c9643e7f6182a7c53ec8c2';

///
/// ユーザーID
///
///
/// Copied from [userId].
@ProviderFor(userId)
final userIdProvider = AutoDisposeProvider<String>.internal(
  userId,
  name: r'userIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserIdRef = AutoDisposeProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
