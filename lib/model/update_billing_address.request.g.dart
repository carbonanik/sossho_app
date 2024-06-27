// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_billing_address.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateBillingAddressRequestImpl _$$UpdateBillingAddressRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateBillingAddressRequestImpl(
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
      province: json['province'] as String?,
      city: json['city'] as String?,
      area: json['area'] as String?,
      address: json['address'] as String?,
      landmark: json['landmark'] as String?,
    );

Map<String, dynamic> _$$UpdateBillingAddressRequestImplToJson(
        _$UpdateBillingAddressRequestImpl instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'phone': instance.phone,
      'province': instance.province,
      'city': instance.city,
      'area': instance.area,
      'address': instance.address,
      'landmark': instance.landmark,
    };
