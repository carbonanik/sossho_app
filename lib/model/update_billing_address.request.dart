import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_billing_address.request.freezed.dart';
part 'update_billing_address.request.g.dart';

@freezed
class UpdateBillingAddressRequest with _$UpdateBillingAddressRequest {
  const factory UpdateBillingAddressRequest({
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
  }) = _UpdateBillingAddressRequest;

  factory UpdateBillingAddressRequest.fromJson(Map<String, dynamic> json) => _$UpdateBillingAddressRequestFromJson(json);
}
