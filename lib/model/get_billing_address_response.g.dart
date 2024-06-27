// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_billing_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBillingAddressResponseImpl _$$GetBillingAddressResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBillingAddressResponseImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      area: json['area'] as String?,
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
      createdBy: json['created_by'],
      updatedBy: json['updated_by'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$GetBillingAddressResponseImplToJson(
        _$GetBillingAddressResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'province': instance.province,
      'city': instance.city,
      'area': instance.area,
      'address': instance.address,
      'landmark': instance.landmark,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
