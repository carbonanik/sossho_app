// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCategoriesResponseImpl _$$GetCategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCategoriesResponseImpl(
      productCategory: (json['product_category'] as List<dynamic>?)
          ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCategoriesResponseImplToJson(
        _$GetCategoriesResponseImpl instance) =>
    <String, dynamic>{
      'product_category': instance.productCategory,
      'metaData': instance.metaData,
    };

_$MetaDataImpl _$$MetaDataImplFromJson(Map<String, dynamic> json) =>
    _$MetaDataImpl(
      limit: (json['limit'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      start: (json['start'] as num?)?.toInt(),
      end: (json['end'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MetaDataImplToJson(_$MetaDataImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'start': instance.start,
      'end': instance.end,
    };

_$ProductCategoryImpl _$$ProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryImpl(
      id: json['id'] as String?,
      isTop: json['is_top'],
      title: json['title'] as String?,
      slug: json['slug'] as String?,
      metaTitle: json['meta_title'] as String?,
      description: json['description'] as String?,
      metaDescription: json['meta_description'] as String?,
      carouselImage: json['carousel_image'] as String?,
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

Map<String, dynamic> _$$ProductCategoryImplToJson(
        _$ProductCategoryImpl instance) =>
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
