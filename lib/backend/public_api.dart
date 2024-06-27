import 'package:sossho_app/model/public_product_response.dart';
import 'package:sossho_app/model/sign_up_request.dart';

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

  Future<PublicProductResponse> getProducts() async {
    return await _client.request(
      path: Links.productsPublic,
      method: MethodType.get,
      parse: PublicProductResponse.fromJson,
    );
  }
}