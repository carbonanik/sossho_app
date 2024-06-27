import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_request.freezed.dart';

part 'profile_update_request.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  const factory ProfileUpdateRequest({
    @JsonKey(name: "gender")
    String? gender,
    @JsonKey(name: "mobile")
    String? mobile,
    @JsonKey(name: "full_name")
    String? fullName,
    @JsonKey(name: "dateOfBirth")
    String? dateOfBirth,
    @JsonKey(name: "profile_image")
    String? profileImage,
  }) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) => _$ProfileUpdateRequestFromJson(json);
}
