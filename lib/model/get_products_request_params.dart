import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_products_request_params.freezed.dart';

part 'get_products_request_params.g.dart';

@freezed
class GetProductsRequestParams with _$GetProductsRequestParams {
  const factory GetProductsRequestParams({
    required int page,
    required int limit,
    String? title,
    String? category,
    String? type,
    String? slug,
    String? minPrice,
    String? maxPrice,
    String? brand,
    String? status,

  }) = _GetProductsRequestParams;

  factory GetProductsRequestParams.fromJson(Map<String, dynamic> json) => _$GetProductsRequestParamsFromJson(json);
}