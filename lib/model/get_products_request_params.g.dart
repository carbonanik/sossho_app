// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_request_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductsRequestParamsImpl _$$GetProductsRequestParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductsRequestParamsImpl(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      title: json['title'] as String?,
      category: json['category'] as String?,
      type: json['type'] as String?,
      slug: json['slug'] as String?,
      minPrice: json['minPrice'] as String?,
      maxPrice: json['maxPrice'] as String?,
      brand: json['brand'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$GetProductsRequestParamsImplToJson(
        _$GetProductsRequestParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'title': instance.title,
      'category': instance.category,
      'type': instance.type,
      'slug': instance.slug,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'brand': instance.brand,
      'status': instance.status,
    };
