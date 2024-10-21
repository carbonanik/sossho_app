// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicProductResponseImpl _$$PublicProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicProductResponseImpl(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PublicProductResponseImplToJson(
        _$PublicProductResponseImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
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
