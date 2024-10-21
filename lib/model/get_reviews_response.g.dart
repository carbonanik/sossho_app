// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      id: json['id'] as String?,
      productId: json['product_id'] as String?,
      userId: json['user_id'] as String?,
      orderId: json['order_id'] as String?,
      message: json['message'] as String?,
      reviewStar: (json['review_star'] as num?)?.toInt(),
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'user_id': instance.userId,
      'order_id': instance.orderId,
      'message': instance.message,
      'review_star': instance.reviewStar,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'product': instance.product,
    };

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
      status: json['status'],
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
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
    };
