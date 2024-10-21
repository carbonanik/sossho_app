// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories_public_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String?,
      isTop: json['is_top'],
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      metaTitle: json['meta_title'] as String?,
      description: json['description'] as String?,
      metaDescription: json['meta_description'] as String?,
      carouselImage: (json['carousel_image'] as List<dynamic>?)
          ?.map((e) => CarouselImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      productType: json['product_type'],
      productCategoryFaq: json['product_category_faq'],
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_top': instance.isTop,
      'title': instance.title,
      'slug': instance.slug,
      'meta_title': instance.metaTitle,
      'description': instance.description,
      'meta_description': instance.metaDescription,
      'carousel_image': instance.carouselImage,
      'product_type': instance.productType,
      'product_category_faq': instance.productCategoryFaq,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CarouselImageImpl _$$CarouselImageImplFromJson(Map<String, dynamic> json) =>
    _$CarouselImageImpl(
      id: json['id'] as String?,
      imagePath: json['image_path'] as String?,
    );

Map<String, dynamic> _$$CarouselImageImplToJson(_$CarouselImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_path': instance.imagePath,
    };
