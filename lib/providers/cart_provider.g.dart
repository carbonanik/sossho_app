// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartContainsHash() => r'4aa011456ebc6ed141a8833df3ec5a4ffffa8424';

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

/// See also [cartContains].
@ProviderFor(cartContains)
const cartContainsProvider = CartContainsFamily();

/// See also [cartContains].
class CartContainsFamily extends Family<bool> {
  /// See also [cartContains].
  const CartContainsFamily();

  /// See also [cartContains].
  CartContainsProvider call({
    required String productId,
  }) {
    return CartContainsProvider(
      productId: productId,
    );
  }

  @override
  CartContainsProvider getProviderOverride(
    covariant CartContainsProvider provider,
  ) {
    return call(
      productId: provider.productId,
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
  String? get name => r'cartContainsProvider';
}

/// See also [cartContains].
class CartContainsProvider extends AutoDisposeProvider<bool> {
  /// See also [cartContains].
  CartContainsProvider({
    required String productId,
  }) : this._internal(
          (ref) => cartContains(
            ref as CartContainsRef,
            productId: productId,
          ),
          from: cartContainsProvider,
          name: r'cartContainsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cartContainsHash,
          dependencies: CartContainsFamily._dependencies,
          allTransitiveDependencies:
              CartContainsFamily._allTransitiveDependencies,
          productId: productId,
        );

  CartContainsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final String productId;

  @override
  Override overrideWith(
    bool Function(CartContainsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CartContainsProvider._internal(
        (ref) => create(ref as CartContainsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _CartContainsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CartContainsProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CartContainsRef on AutoDisposeProviderRef<bool> {
  /// The parameter `productId` of this provider.
  String get productId;
}

class _CartContainsProviderElement extends AutoDisposeProviderElement<bool>
    with CartContainsRef {
  _CartContainsProviderElement(super.provider);

  @override
  String get productId => (origin as CartContainsProvider).productId;
}

String _$cartHash() => r'8b71b69b18cc6675424b345e0ee260898d556371';

/// See also [Cart].
@ProviderFor(Cart)
final cartProvider =
    AutoDisposeAsyncNotifierProvider<Cart, GetCartResponse>.internal(
  Cart.new,
  name: r'cartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Cart = AutoDisposeAsyncNotifier<GetCartResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
