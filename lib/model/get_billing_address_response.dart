import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_billing_address_response.freezed.dart';
part 'get_billing_address_response.g.dart';

@freezed
class GetBillingAddressResponse with _$GetBillingAddressResponse {
  const factory GetBillingAddressResponse({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "user_id")
    String? userId,
    @JsonKey(name: "full_name")
    String? fullName,
    @JsonKey(name: "phone")
    String? phone,
    @JsonKey(name: "province")
    String? province,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "area")
    String? area,
    @JsonKey(name: "address")
    String? address,
    @JsonKey(name: "landmark")
    String? landmark,
    @JsonKey(name: "created_by")
    dynamic createdBy,
    @JsonKey(name: "updated_by")
    dynamic updatedBy,
    @JsonKey(name: "created_at")
    DateTime? createdAt,
    @JsonKey(name: "updated_at")
    DateTime? updatedAt,
  }) = _GetBillingAddressResponse;

  factory GetBillingAddressResponse.fromJson(Map<String, dynamic> json) => _$GetBillingAddressResponseFromJson(json);
}
