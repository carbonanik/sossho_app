import 'package:dio/dio.dart';
import 'api_client.dart';
import 'method_types.dart';

class DioClient implements ApiClient {
  late Dio _client;

  // final cookieJar = CookieJar();

  DioClient({required String baseUrl}) {
    _client = Dio()..options.baseUrl = baseUrl
        // ..interceptors.add(
        //   LogInterceptor(
        //     responseBody: true,
        //     requestBody: true,
        //   ),
        // )
        //
        ;
  }

  @override
  Future<T> request<T>({
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParams,
    Map<String, String>? headers,
    T Function(Map<String, dynamic> json)? parse,
    T Function(List<dynamic> json)? parseList,
    T Function(DioException e)? errorHandler,
    bool? showLoader,
  }) async {
    T result;
    Response? response;

    switch (method) {
      case MethodType.get:
        response = await _client.get(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.post:
        response = await _client.post(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.put:
        response = await _client.put(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.delete:
        response = await _client.delete(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.patch:
        response = await _client.patch(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
    }
    result = await parseData(response, parse, parseList);
    return result;
  }

  Future<T> parseData<T>(
    Response? response,
    T Function(Map<String, dynamic> json)? parse,
    T Function(List<dynamic> json)? parseList,
  ) async {
    final T parsed;
    if (response?.data is List && parseList != null) {
      parsed = parseList.call(response?.data);
    } else if (response?.data is Map && parse != null) {
      parsed = parse.call(response?.data);
    } else {
      parsed = response?.data;
    }
    return parsed;
  }

  @override
  Future<void> setToken(String token) async {
    _client.options.headers['access_token'] = token;
  }

  @override
  void removeToken() {
    // _client.options.headers.remove('Authorization');
  }
}
