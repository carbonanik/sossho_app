// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      slug: json['slug'] as String?,
      category: json['category'] as String?,
      price: json['price'] as String?,
      offerPrice: json['offer_price'] as String?,
      brand: json['brand'] as String?,
      metaTitle: json['meta_title'] as String?,
      description: json['description'] as String?,
      metaDescription: json['meta_description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      mainFeature: (json['main_feature'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productFaq: (json['product_faq'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content: json['content'] as String?,
      status: json['status'] as String?,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      sales: (json['sales'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'slug': instance.slug,
      'category': instance.category,
      'price': instance.price,
      'offer_price': instance.offerPrice,
      'brand': instance.brand,
      'meta_title': instance.metaTitle,
      'description': instance.description,
      'meta_description': instance.metaDescription,
      'images': instance.images,
      'main_feature': instance.mainFeature,
      'product_faq': instance.productFaq,
      'content': instance.content,
      'status': instance.status,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'sales': instance.sales,
      'rating': instance.rating,
    };
