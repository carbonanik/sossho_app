import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_reviews_response.freezed.dart';
part 'get_reviews_response.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "product_id")
    String? productId,
    @JsonKey(name: "user_id")
    String? userId,
    @JsonKey(name: "order_id")
    String? orderId,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "review_star")
    int? reviewStar,
    @JsonKey(name: "created_by")
    String? createdBy,
    @JsonKey(name: "updated_by")
    dynamic updatedBy,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    @JsonKey(name: "product")
    Product? product,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

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
    List<String>? images,
    @JsonKey(name: "main_feature")
    List<String>? mainFeature,
    @JsonKey(name: "product_faq")
    List<String>? productFaq,
    @JsonKey(name: "content")
    String? content,
    @JsonKey(name: "status")
    dynamic status,
    @JsonKey(name: "created_by")
    String? createdBy,
    @JsonKey(name: "updated_by")
    dynamic updatedBy,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
