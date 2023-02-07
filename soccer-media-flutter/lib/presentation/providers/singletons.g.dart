// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singletons.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$dioHash() => r'28bc6c3c3ca1a4cee5bbd681ee8ccdacfecfd6fb';

/// See also [dio].
final dioProvider = Provider<Dio>(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
);
typedef DioRef = ProviderRef<Dio>;
String _$apiHash() => r'e780c07fe291fa3d5a7b708fe103dc88e69dce45';

/// See also [api].
final apiProvider = Provider<API>(
  api,
  name: r'apiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$apiHash,
);
typedef ApiRef = ProviderRef<API>;
String _$apiRepositoryHash() => r'8b797cfaa0bf0a4b31b841f7a3e8b81d06d46e59';

/// See also [apiRepository].
final apiRepositoryProvider = Provider<APIRepository>(
  apiRepository,
  name: r'apiRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$apiRepositoryHash,
);
typedef ApiRepositoryRef = ProviderRef<APIRepository>;
String _$postsRepoHash() => r'0b73ad57b6d563bf1bd8465e94c921d511739672';

/// See also [postsRepo].
final postsRepoProvider = Provider<PostsRepo>(
  postsRepo,
  name: r'postsRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$postsRepoHash,
);
typedef PostsRepoRef = ProviderRef<PostsRepo>;
