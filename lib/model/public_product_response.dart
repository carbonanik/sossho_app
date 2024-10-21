import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sossho_app/model/product.dart';

part 'public_product_response.freezed.dart';

part 'public_product_response.g.dart';

@freezed
class PublicProductResponse with _$PublicProductResponse {
  const factory PublicProductResponse({
    List<Product>? products,
    MetaData? metaData,
  }) = _PublicProductResponse;

  factory PublicProductResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicProductResponseFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({
    int? limit,
    int? page,
    int? total,
    int? start,
    int? end,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}
