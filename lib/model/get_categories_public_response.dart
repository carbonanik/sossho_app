import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_categories_public_response.freezed.dart';
part 'get_categories_public_response.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "is_top")
    dynamic isTop,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "slug")
    String? slug,
    @JsonKey(name: "meta_title")
    String? metaTitle,
    @JsonKey(name: "description")
    String? description,
    @JsonKey(name: "meta_description")
    String? metaDescription,
    @JsonKey(name: "carousel_image")
    List<CarouselImage>? carouselImage,
    @JsonKey(name: "product_type")
    dynamic productType,
    @JsonKey(name: "product_category_faq")
    dynamic productCategoryFaq,
    @JsonKey(name: "created_by")
    String? createdBy,
    @JsonKey(name: "updated_by")
    String? updatedBy,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class CarouselImage with _$CarouselImage {
  const factory CarouselImage({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "image_path")
    String? imagePath,
  }) = _CarouselImage;

  factory CarouselImage.fromJson(Map<String, dynamic> json) => _$CarouselImageFromJson(json);
}
