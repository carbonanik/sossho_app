import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

@freezed
class CreateOrderRequest with _$CreateOrderRequest {
  const factory CreateOrderRequest({
    @JsonKey(name: "orderItems")
    List<OrderItem>? orderItems,
    @JsonKey(name: "deliveryAddress")
    Address? deliveryAddress,
    @JsonKey(name: "billingAddress")
    Address? billingAddress,
    @JsonKey(name: "paymentMethod")
    String? paymentMethod,
  }) = _CreateOrderRequest;

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "street")
    String? street,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "state")
    String? state,
    @JsonKey(name: "zipcode")
    String? zipcode,
    @JsonKey(name: "country")
    String? country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    @JsonKey(name: "product_id")
    String? productId,
    @JsonKey(name: "quantity")
    int? quantity,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}
