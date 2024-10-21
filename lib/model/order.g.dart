// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      deliveryAddress: json['deliveryAddress'] == null
          ? null
          : Address.fromJson(json['deliveryAddress'] as Map<String, dynamic>),
      billingAddress: json['billingAddress'] == null
          ? null
          : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] as String?,
      discountCode: json['discountCode'],
      discountAmount: json['discountAmount'],
      totalAmount: json['totalAmount'] as String?,
      orderStatus: json['orderStatus'] as String?,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      orderItems: (json['orderItems'] as List<dynamic>?)
          ?.map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'deliveryAddress': instance.deliveryAddress,
      'billingAddress': instance.billingAddress,
      'paymentMethod': instance.paymentMethod,
      'discountCode': instance.discountCode,
      'discountAmount': instance.discountAmount,
      'totalAmount': instance.totalAmount,
      'orderStatus': instance.orderStatus,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'orderItems': instance.orderItems,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      city: json['city'] as String?,
      state: json['state'] as String?,
      street: json['street'] as String?,
      country: json['country'] as String?,
      zipcode: json['zipcode'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'street': instance.street,
      'country': instance.country,
      'zipcode': instance.zipcode,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      id: json['id'] as String?,
      orderId: json['order_id'] as String?,
      productId: json['product_id'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      productPrice: json['product_price'] as String?,
      totalPrice: json['total_price'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'product_price': instance.productPrice,
      'total_price': instance.totalPrice,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
