import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_product_brand_public_response.freezed.dart';

part 'get_product_brand_public_response.g.dart';

@freezed
class ProductBrand with _$ProductBrand {
  const factory ProductBrand({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "is_top") dynamic isTop,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "meta_title") String? metaTitle,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "meta_description") String? metaDescription,
    @JsonKey(name: "carousel_image") List<CarouselImage>? carouselImage,
    @JsonKey(name: "product_type") dynamic productType,
    @JsonKey(name: "product_category") dynamic productCategory,
    @JsonKey(name: "product_brand_faq") dynamic productBrandFaq,
    @JsonKey(name: "created_by") dynamic createdBy,
    @JsonKey(name: "updated_by") dynamic updatedBy,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _ProductBrand;

  factory ProductBrand.fromJson(Map<String, dynamic> json) =>
      _$ProductBrandFromJson(json);
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
