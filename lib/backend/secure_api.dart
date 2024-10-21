import 'dart:async';

import 'package:sossho_app/model/create_order_request.dart';
import 'package:sossho_app/model/get_billing_address_response.dart';
import 'package:sossho_app/model/get_cart_response.dart';
import 'package:sossho_app/model/get_categories_response.dart';
import 'package:sossho_app/model/get_order_response.dart';
import 'package:sossho_app/model/get_reviews_response.dart';
import 'package:sossho_app/model/profile_update_request.dart';
import 'package:sossho_app/model/update_billing_address.request.dart';
import 'package:sossho_app/model/user_response.dart';

import '../model/get_profile_response.dart';
import 'dio_client.dart';
import 'links.dart';
import 'method_types.dart';

class SecureApi {
  final DioClient _client;

  SecureApi({required DioClient client}) : _client = client;

  Future getProducts() async {
    return await _client.request(
      path: Links.products,
      method: MethodType.get,
    );
  }

  Future<GetCategoriesResponse> getCategories() async {
    return await _client.request(
      path: Links.category,
      method: MethodType.get,
      parse: GetCategoriesResponse.fromJson,
    );
  }

  // cart methods

  // cart is a cart item here
  // create cart mean add to cart
  // create will add previous quantity to new quantity
  Future createCart({
    required String productId,
    required int quantity,
  }) async {
    return await _client.request(
      path: Links.cart,
      method: MethodType.post,
      payload: {
        'product_id': productId,
        'quantity': quantity,
      },
      parse: (data) => data,
    );
  }

  // update cart will update quantity of the item
  Future updateCart({
    required String cartId,
    required String productId,
    required int quantity,
  }) async {
    return await _client.request(
      path: '${Links.cart}/$cartId',
      method: MethodType.patch,
      payload: {
        'product_id': productId,
        'quantity': quantity,
      },
      parse: (data) => data,
    );
  }

  Future deleteCart({
    required String cartId,
  }) async {
    return await _client.request(
      path: '${Links.cart}/$cartId',
      method: MethodType.delete,
      parse: (data) => data,
    );
  }

  Future<GetCartResponse> getCart() async {
    return await _client.request(
      path: Links.cart,
      method: MethodType.get,
      parse: GetCartResponse.fromJson,
    );
  }

  Future<GetProfileResponse> getProfile() async {
    return await _client.request(
      path: Links.profile,
      method: MethodType.get,
      parse: GetProfileResponse.fromJson,
    );
  }

  Future profileUpdate({
    required ProfileUpdateRequest request,
  }) async {
    return await _client.request(
      path: Links.profile,
      method: MethodType.put,
      payload: request.toJson(),
      parse: (data) => data,
    );
  }

  Future<GetBillingAddressResponse> getBillingAddress() async {
    return await _client.request(
      path: Links.billingAddress,
      method: MethodType.get,
      parse: GetBillingAddressResponse.fromJson,
    );
  }

  Future createBillingAddress({
    required UpdateBillingAddressRequest request,
  }) async {
    return await _client.request(
      path: Links.billingAddress,
      method: MethodType.post,
      payload: request.toJson(),
      parse: (data) => data,
    );
  }

  Future updateBillingAddress({
    required String addressId,
    required UpdateBillingAddressRequest request,
  }) async {
    return await _client.request(
      path: '${Links.billingAddress}/$addressId',
      method: MethodType.put,
      payload: request.toJson(),
      parse: (data) => data,
    );
  }

  Future deleteBillingAddress({
    required String addressId,
  }) async {
    return await _client.request(
      path: '${Links.billingAddress}/$addressId',
      method: MethodType.delete,
      parse: (data) => data,
    );
  }

  Future<GetBillingAddressResponse> getDeliveryAddress() async {
    return await _client.request(
      path: Links.deliveryAddress,
      method: MethodType.get,
      parse: GetBillingAddressResponse.fromJson,
    );
  }

  Future createDeliveryAddress({
    required UpdateBillingAddressRequest request,
  }) async {
    return await _client.request(
      path: Links.deliveryAddress,
      method: MethodType.post,
      payload: request.toJson(),
      parse: (data) => data,
    );
  }

  Future updateDeliveryAddress({
    required String addressId,
    required UpdateBillingAddressRequest request,
  }) async {
    return await _client.request(
      path: '${Links.deliveryAddress}/$addressId',
      method: MethodType.put,
      payload: request.toJson(),
      parse: (data) => data,
    );
  }

  Future deleteDeliveryAddress({
    required String addressId,
  }) async {
    return await _client.request(
      path: '${Links.deliveryAddress}/$addressId',
      method: MethodType.delete,
      parse: (data) => data,
    );
  }

  Future createOrder({
    required CreateOrderRequest request,
  }) async {
    return _client.request(
      path: Links.order,
      method: MethodType.post,
      payload: request.toJson(),
      parse: (data) => data,
    );
  }

  Future changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    return _client.request(
      path: Links.changePassword,
      method: MethodType.put,
      payload: {
        "old_password": oldPassword,
        "new_password": newPassword,
      },
      parse: (data) => data,
    );
  }

  Future applyPromo({
    required int totalOrderValue,
    required String code,
  }) {
    return _client.request(
      path: Links.applyPromo,
      method: MethodType.post,
      // parse: (data) => data,
      payload: {
        "total_order_value": totalOrderValue,
        "code": code,
      },
    );
  }

  Future<List<GetOrdersResponse>> getAllOrder() {
    return _client.request(
      path: Links.order,
      method: MethodType.get,
      parseList: (json) {
        return json.map(
          (e) {
            return GetOrdersResponse.fromJson(e);
          },
        ).toList();
      },
    );
  }

  Future<List<Review>> getReviews() {
    return _client.request(
      path: Links.review,
      method: MethodType.get,
      parseList: (json) {
        return json.map((e) => Review.fromJson(e)).toList();
      },
    );
  }

  Future<User> getUserByID({required String id}) {
    return _client.request(
      path: '${Links.user}/$id',
      method: MethodType.get,
      parse: User.fromJson,
    );
  }
}
