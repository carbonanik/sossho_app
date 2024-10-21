import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sossho_app/model/get_products_request_params.dart';
import 'package:sossho_app/providers/api_provider.dart';

import '../model/home_response.dart';
import '../model/public_product_response.dart';

part 'public_product_provider.g.dart';

@riverpod
class GetProductRequestParamsProvider
    extends _$GetProductRequestParamsProvider {
  @override
  GetProductsRequestParams build() {
    return const GetProductsRequestParams(page: 1, limit: 10);
  }

  void setParams(GetProductsRequestParams params) {
    if (state == params) return;
    state = params;
  }

  void update(
      GetProductsRequestParams Function(
        GetProductsRequestParams value,
      ) func) {
    state = func(state);
    print(state);
  }
}

@riverpod
Future<PublicProductResponse> publicProductProvider(
  PublicProductProviderRef ref,
) {
  final params = ref.watch(getProductRequestParamsProviderProvider);
  return ref.read(publicApiProvider).getProducts(
        params: params,
      );
}

@riverpod
Future<HomeResponse> homeProducts(
  HomeProductsRef ref,
) {
  return ref.read(publicApiProvider).homeProducts();
}
