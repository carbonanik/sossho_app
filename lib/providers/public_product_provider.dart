import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/providers/api_provider.dart';

import '../model/public_product_response.dart';

part 'public_product_provider.g.dart';

@riverpod
Future<PublicProductResponse> publicProductProvider(
  PublicProductProviderRef ref,
) {
  return ref.read(publicApiProvider).getProducts();
}
