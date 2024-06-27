// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCartResponseImpl _$$GetCartResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCartResponseImpl(
      cart: (json['cart'] as List<dynamic>?)
          ?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCartResponseImplToJson(
        _$GetCartResponseImpl instance) =>
    <String, dynamic>{
      'cart': instance.cart,
      'metaData': instance.metaData,
    };

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: json['id'] as String?,
      productId: json['product_id'] as String?,
      userId: json['user_id'] as String?,
      quantity: json['quantity'] as String?,
      createdBy: json['created_by'],
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

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'user_id': instance.userId,
      'quantity': instance.quantity,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'product': instance.product,
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
