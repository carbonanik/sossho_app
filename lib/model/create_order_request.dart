import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.freezed.dart';
part 'create_order_request.g.dart';

@freezed
class CreateOrderRequest with _$CreateOrderRequest {
  const factory CreateOrderRequest({
    @JsonKey(name: "product_id")
    String? productId,
    @JsonKey(name: "quantity")
    int? quantity,
    @JsonKey(name: "deliveryAddress")
    Address? deliveryAddress,
    @JsonKey(name: "billingAddress")
    Address? billingAddress,
    @JsonKey(name: "paymentMethod")
    String? paymentMethod,
    @JsonKey(name: "discountCode")
    String? discountCode,
    @JsonKey(name: "discountAmount")
    int? discountAmount,
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
