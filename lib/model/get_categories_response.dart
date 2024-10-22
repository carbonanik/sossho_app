import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_categories_response.freezed.dart';

part 'get_categories_response.g.dart';

@freezed
class GetCategoriesResponse with _$GetCategoriesResponse {
  const factory GetCategoriesResponse({
    @JsonKey(name: "product_category") List<ProductCategory>? productCategory,
    @JsonKey(name: "metaData") MetaData? metaData,
  }) = _GetCategoriesResponse;

  factory GetCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCategoriesResponseFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "start") int? start,
    @JsonKey(name: "end") int? end,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "is_top") dynamic isTop,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "meta_title") String? metaTitle,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "meta_description") String? metaDescription,
    @JsonKey(name: "carousel_image") dynamic carouselImage,
    @JsonKey(name: "product_type") dynamic productType,
    @JsonKey(name: "product_category_faq") dynamic productCategoryFaq,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "updated_by") String? updatedBy,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class CarouselImage with _$CarouselImage {
  const factory CarouselImage({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "image_path") String? imagePath,
  }) = _CarouselImage;

  factory CarouselImage.fromJson(Map<String, dynamic> json) =>
      _$CarouselImageFromJson(json);
}
