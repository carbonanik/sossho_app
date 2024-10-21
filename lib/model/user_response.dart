import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

part 'user_response.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "email_verify") String? emailVerify,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "dateOfBirth") dynamic dateOfBirth,
    @JsonKey(name: "mobile") dynamic mobile,
    @JsonKey(name: "gender") dynamic gender,
    @JsonKey(name: "profile_image") dynamic profileImage,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "profile_id") String? profileId,
    @JsonKey(name: "created_by") dynamic createdBy,
    @JsonKey(name: "updated_by") dynamic updatedBy,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "profile") Profile? profile,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "created_by") String? createdBy,
    @JsonKey(name: "updated_by") String? updatedBy,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
