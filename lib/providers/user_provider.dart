import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/get_reviews_response.dart';
import 'package:sossho_app/model/user_response.dart';
import 'package:sossho_app/providers/api_provider.dart';

part 'user_provider.g.dart';

@riverpod
Future<User> getUserById(GetUserByIdRef ref, {required String id}) async {
  final api = await ref.read(secureApiProvider.future);
  final response = await api.getUserByID(id: id);
  return response;
}
