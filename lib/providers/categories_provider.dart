


import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/get_categories_response.dart';
import 'package:sossho_app/providers/api_provider.dart';

part 'categories_provider.g.dart';

@riverpod
Future<GetCategoriesResponse> categories(CategoriesRef ref) async {
  final api = await ref.read(secureApiProvider.future);
  final res = await api.getCategories();
  return res;
}