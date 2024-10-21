import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_order_response.freezed.dart';
part 'get_order_response.g.dart';

@freezed
class GetOrdersResponse with _$GetOrdersResponse {
  const factory GetOrdersResponse({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "user_id")
    String? userId,
    @JsonKey(name: "deliveryAddress")
    Address? deliveryAddress,
    @JsonKey(name: "billingAddress")
    Address? billingAddress,
    @JsonKey(name: "paymentMethod")
    String? paymentMethod,
    @JsonKey(name: "discountCode")
    dynamic discountCode,
    @JsonKey(name: "discountAmount")
    dynamic discountAmount,
    @JsonKey(name: "totalAmount")
    String? totalAmount,
    @JsonKey(name: "orderStatus")
    String? orderStatus,
    @JsonKey(name: "created_by")
    String? createdBy,
    @JsonKey(name: "updated_by")
    dynamic updatedBy,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
    @JsonKey(name: "orderItems")
    List<OrderItem>? orderItems,
  }) = _GetOrdersResponse;

  factory GetOrdersResponse.fromJson(Map<String, dynamic> json) => _$GetOrdersResponseFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "state")
    String? state,
    @JsonKey(name: "street")
    String? street,
    @JsonKey(name: "country")
    String? country,
    @JsonKey(name: "zipcode")
    String? zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "order_id")
    String? orderId,
    @JsonKey(name: "product_id")
    String? productId,
    @JsonKey(name: "quantity")
    int? quantity,
    @JsonKey(name: "product_price")
    String? productPrice,
    @JsonKey(name: "total_price")
    String? totalPrice,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}
