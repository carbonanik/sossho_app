// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$secureApiHash() => r'ccdd55efb53ee7d1c547698988db31f836d3eceb';

/// See also [secureApi].
@ProviderFor(secureApi)
final secureApiProvider = AutoDisposeFutureProvider<SecureApi>.internal(
  secureApi,
  name: r'secureApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$secureApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SecureApiRef = AutoDisposeFutureProviderRef<SecureApi>;
String _$publicApiHash() => r'9dbac13590e7930d83a8a2cf0b29beb279a3d2ed';

/// See also [publicApi].
@ProviderFor(publicApi)
final publicApiProvider = AutoDisposeProvider<PublicApi>.internal(
  publicApi,
  name: r'publicApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$publicApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PublicApiRef = AutoDisposeProviderRef<PublicApi>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
