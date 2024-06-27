import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';

part 'sign_up_request.g.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    required String email,
    required String password,
    @JsonKey(name: 'full_name') required String fullName,
    required String mobile,
    required String dateOfBirth,
    required String gender,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}
