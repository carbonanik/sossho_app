import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
class Product with _$Product {
  const factory Product({
    String? id,
    String? title,
    String? type,
    String? slug,
    String? category,
    String? price,
    @JsonKey(name: 'offer_price')
    String? offerPrice,
    String? brand,
    @JsonKey(name: 'meta_title')
    String? metaTitle,
    String? description,
    @JsonKey(name: 'meta_description')
    String? metaDescription,
    List<String>? images,
    @JsonKey(name: 'main_feature')
    List<String>? mainFeature,
    @JsonKey(name: 'product_faq')
    List<String>? productFaq,
    String? content,
    dynamic status,
    @JsonKey(name: 'created_by')
    String? createdBy,
    @JsonKey(name: 'updated_by')
    dynamic updatedBy,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
