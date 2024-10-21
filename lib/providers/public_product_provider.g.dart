// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$publicProductProviderHash() =>
    r'9d11a64b699744de47508e387618e92fe93db230';

/// See also [publicProductProvider].
@ProviderFor(publicProductProvider)
final publicProductProviderProvider =
    AutoDisposeFutureProvider<PublicProductResponse>.internal(
  publicProductProvider,
  name: r'publicProductProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$publicProductProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PublicProductProviderRef
    = AutoDisposeFutureProviderRef<PublicProductResponse>;
String _$homeProductsHash() => r'f4d8771611c76318ca0807f8c2d21bd9036142d8';

/// See also [homeProducts].
@ProviderFor(homeProducts)
final homeProductsProvider = AutoDisposeFutureProvider<HomeResponse>.internal(
  homeProducts,
  name: r'homeProductsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeProductsRef = AutoDisposeFutureProviderRef<HomeResponse>;
String _$getProductRequestParamsProviderHash() =>
    r'dd5a12d3aebc54ee8e1197b4151fea9e7714b43e';

/// See also [GetProductRequestParamsProvider].
@ProviderFor(GetProductRequestParamsProvider)
final getProductRequestParamsProviderProvider = AutoDisposeNotifierProvider<
    GetProductRequestParamsProvider, GetProductsRequestParams>.internal(
  GetProductRequestParamsProvider.new,
  name: r'getProductRequestParamsProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getProductRequestParamsProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$GetProductRequestParamsProvider
    = AutoDisposeNotifier<GetProductsRequestParams>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
