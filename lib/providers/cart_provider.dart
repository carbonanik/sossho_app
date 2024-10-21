import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/providers/api_provider.dart';
import 'package:sossho_app/utils/error_as_value.dart';

import '../model/get_cart_response.dart';

part 'cart_provider.g.dart';

@riverpod
class ShoppingCart extends _$ShoppingCart {
  @override
  Future<GetCartResponse> build() async {
    final api = await ref.read(secureApiProvider.future).errorAsValue();
    final cart = await api.valueOrNull?.getCart();
    return cart!;
  }

  Future updateCart({
    required String cartId,
    required String productId,
    required int quantity,
  }) async {
    final api = await ref.read(secureApiProvider.future).errorAsValue();
    await api.valueOrNull?.updateCart(
      cartId: cartId,
      productId: productId,
      quantity: quantity,
    );
    ref.invalidateSelf();
  }

  Future deleteCart({
    required String cartId,
  }) async {
    final api = await ref.read(secureApiProvider.future).errorAsValue();
    await api.valueOrNull?.deleteCart(cartId: cartId);
    ref.invalidateSelf();
  }

  Future addToCart({
    required String productId,
    required int quantity,
  }) async {
    final api = await ref.read(secureApiProvider.future).errorAsValue();
    await api.valueOrNull?.createCart(productId: productId, quantity: quantity);
    ref.invalidateSelf();
  }
}

@riverpod
bool cartContains(CartContainsRef ref, {required String productId}) {
  final cart = ref.watch(shoppingCartProvider);
  final items = cart.valueOrNull?.cart ?? [];

  if (items.where(
    (element) {
      return element.productId == productId;
    },
  ).isNotEmpty) {
    return true;
  }

  return false;
}
