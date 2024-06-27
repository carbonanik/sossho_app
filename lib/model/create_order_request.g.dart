// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderRequestImpl _$$CreateOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderRequestImpl(
      productId: json['product_id'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      deliveryAddress: json['deliveryAddress'] == null
          ? null
          : Address.fromJson(json['deliveryAddress'] as Map<String, dynamic>),
      billingAddress: json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] as String?,
      discountCode: json['discountCode'] as String?,
      discountAmount: (json['discountAmount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateOrderRequestImplToJson(
        _$CreateOrderRequestImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'deliveryAddress': instance.deliveryAddress,
      'billingAddress': instance.billingAddress,
      'paymentMethod': instance.paymentMethod,
      'discountCode': instance.discountCode,
      'discountAmount': instance.discountAmount,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      street: json['street'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'zipcode': instance.zipcode,
      'country': instance.country,
    };
