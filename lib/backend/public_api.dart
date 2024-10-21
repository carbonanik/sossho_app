import 'package:sossho_app/model/get_product_brand_public_response.dart';
import 'package:sossho_app/model/get_products_request_params.dart';
import 'package:sossho_app/model/public_product_response.dart';
import 'package:sossho_app/model/sign_up_request.dart';

import '../model/get_categories_public_response.dart';
import '../model/home_response.dart';
import '../model/login_response.dart';
import 'dio_client.dart';
import 'links.dart';
import 'method_types.dart';

class PublicApi {
  final DioClient _client;

  PublicApi({required DioClient client}) : _client = client;

  Future<LoginResponse> login({
    required String email,
    required String password,
  }) async {
    return await _client.request(
      path: Links.login,
      payload: {
        "email": email,
        "password": password,
      },
      method: MethodType.post,
      parse: LoginResponse.fromJson,
    );
  }

  Future<LoginResponse> signUp({
    required SignUpRequest data,
  }) async {
    return await _client.request(
      path: Links.signUp,
      payload: data.toJson(),
      method: MethodType.post,
      parse: LoginResponse.fromJson,
    );
  }

  Future forgotPassword({
    required String email,
  }) {
    return _client.request(
      path: Links.forgotPassword,
      method: MethodType.post,
      payload: {
        "email": email,
      },
    );
  }

  Future resetPassword({
    required String email,
    required String otpId,
    required String otpCode,
    required String password,
  }) {
    return _client.request(
      path: Links.resetPassword,
      method: MethodType.post,
      payload: {
        "email": email,
        "otp_id": otpId,
        "otp_code": otpCode,
        "password": password,
      },
    );
  }

//http://localhost:8000/api/v1/public/product?page=1&limit=15&title=1&category=Smartphones&type=phone&slug=example-slug&minPrice=100&maxPrice=500&brand=example-brand&status=available
  Future<PublicProductResponse> getProducts({
    required GetProductsRequestParams params,
  }) async {
    return await _client.request(
      path: Links.productsPublic,
      method: MethodType.get,
      parse: PublicProductResponse.fromJson,
      queryParams: params.toJson(),
    );
  }

  Future<HomeResponse> homeProducts() {
    return _client.request(
        path: Links.homeProducts,
        method: MethodType.get,
        parse: HomeResponse.fromJson);
  }

  Future<List<Category>> getCategories() {
    return _client.request(
      path: Links.productsCategory,
      method: MethodType.get,
      parseList: (json) {
        return json.map((e) => Category.fromJson(e)).toList();
      },
    );
  }

  Future<List<ProductBrand>> getProductBrands() {
    return _client.request(
      path: Links.productBrand,
      method: MethodType.get,
      parseList: (json) {
        return json.map((e) => ProductBrand.fromJson(e)).toList();
      },
    );
  }
}
