import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../backend/auth_persist_data.dart';
import '../backend/dio_client.dart';
import '../backend/links.dart';
import '../backend/public_api.dart';
import '../backend/secure_api.dart';

part 'api_provider.g.dart';

@riverpod
Future<SecureApi> secureApi(SecureApiRef ref) async {
  final client = DioClient(baseUrl: Links.baseUrl);
  final authData = await AuthPersistData().getAuthData();
  client.setToken(authData.token);
  return SecureApi(client: client);
}

@riverpod
PublicApi publicApi(PublicApiRef ref) {
  return PublicApi(client: DioClient(baseUrl: Links.baseUrl));
}
