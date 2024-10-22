

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "type")
    String? type,
    @JsonKey(name: "slug")
    String? slug,
    @JsonKey(name: "category")
    String? category,
    @JsonKey(name: "price")
    String? price,
    @JsonKey(name: "offer_price")
    String? offerPrice,
    @JsonKey(name: "brand")
    String? brand,
    @JsonKey(name: "meta_title")
    String? metaTitle,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "meta_description")
    String? metaDescription,
    @JsonKey(name: "images")
    dynamic images,
    @JsonKey(name: "main_feature")
    dynamic mainFeature,
    @JsonKey(name: "product_faq")
    dynamic productFaq,
    @JsonKey(name: "content")
    String? content,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "created_by")
    String? createdBy,
    @JsonKey(name: "updated_by")
    String? updatedBy,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    @JsonKey(name: "sales")
    int? sales,
    @JsonKey(name: "rating")
    int? rating,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
