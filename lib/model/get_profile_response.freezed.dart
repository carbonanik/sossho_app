// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) {
  return _GetProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$GetProfileResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verify")
  String? get emailVerify => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "dateOfBirth")
  dynamic get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  dynamic get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  dynamic get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  dynamic get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_id")
  String? get profileId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  dynamic get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  Profile? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileResponseCopyWith<GetProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileResponseCopyWith<$Res> {
  factory $GetProfileResponseCopyWith(
          GetProfileResponse value, $Res Function(GetProfileResponse) then) =
      _$GetProfileResponseCopyWithImpl<$Res, GetProfileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "profile") Profile? profile});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$GetProfileResponseCopyWithImpl<$Res, $Val extends GetProfileResponse>
    implements $GetProfileResponseCopyWith<$Res> {
  _$GetProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? emailVerify = freezed,
    Object? fullName = freezed,
    Object? dateOfBirth = freezed,
    Object? mobile = freezed,
    Object? gender = freezed,
    Object? profileImage = freezed,
    Object? password = freezed,
    Object? profileId = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerify: freezed == emailVerify
          ? _value.emailVerify
          : emailVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetProfileResponseImplCopyWith<$Res>
    implements $GetProfileResponseCopyWith<$Res> {
  factory _$$GetProfileResponseImplCopyWith(_$GetProfileResponseImpl value,
          $Res Function(_$GetProfileResponseImpl) then) =
      __$$GetProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "profile") Profile? profile});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$GetProfileResponseImplCopyWithImpl<$Res>
    extends _$GetProfileResponseCopyWithImpl<$Res, _$GetProfileResponseImpl>
    implements _$$GetProfileResponseImplCopyWith<$Res> {
  __$$GetProfileResponseImplCopyWithImpl(_$GetProfileResponseImpl _value,
      $Res Function(_$GetProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? emailVerify = freezed,
    Object? fullName = freezed,
    Object? dateOfBirth = freezed,
    Object? mobile = freezed,
    Object? gender = freezed,
    Object? profileImage = freezed,
    Object? password = freezed,
    Object? profileId = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$GetProfileResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerify: freezed == emailVerify
          ? _value.emailVerify
          : emailVerify // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileResponseImpl implements _GetProfileResponse {
  const _$GetProfileResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "email_verify") this.emailVerify,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "dateOfBirth") this.dateOfBirth,
      @JsonKey(name: "mobile") this.mobile,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "profile_image") this.profileImage,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "profile_id") this.profileId,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "updated_by") this.updatedBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "profile") this.profile});

  factory _$GetProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "email_verify")
  final String? emailVerify;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "dateOfBirth")
  final dynamic dateOfBirth;
  @override
  @JsonKey(name: "mobile")
  final dynamic mobile;
  @override
  @JsonKey(name: "gender")
  final dynamic gender;
  @override
  @JsonKey(name: "profile_image")
  final dynamic profileImage;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "profile_id")
  final String? profileId;
  @override
  @JsonKey(name: "created_by")
  final dynamic createdBy;
  @override
  @JsonKey(name: "updated_by")
  final dynamic updatedBy;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "profile")
  final Profile? profile;

  @override
  String toString() {
    return 'GetProfileResponse(id: $id, email: $email, emailVerify: $emailVerify, fullName: $fullName, dateOfBirth: $dateOfBirth, mobile: $mobile, gender: $gender, profileImage: $profileImage, password: $password, profileId: $profileId, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerify, emailVerify) ||
                other.emailVerify == emailVerify) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      emailVerify,
      fullName,
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(mobile),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(profileImage),
      password,
      profileId,
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy),
      createdAt,
      updatedAt,
      profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileResponseImplCopyWith<_$GetProfileResponseImpl> get copyWith =>
      __$$GetProfileResponseImplCopyWithImpl<_$GetProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _GetProfileResponse implements GetProfileResponse {
  const factory _GetProfileResponse(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "email_verify") final String? emailVerify,
          @JsonKey(name: "full_name") final String? fullName,
          @JsonKey(name: "dateOfBirth") final dynamic dateOfBirth,
          @JsonKey(name: "mobile") final dynamic mobile,
          @JsonKey(name: "gender") final dynamic gender,
          @JsonKey(name: "profile_image") final dynamic profileImage,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "profile_id") final String? profileId,
          @JsonKey(name: "created_by") final dynamic createdBy,
          @JsonKey(name: "updated_by") final dynamic updatedBy,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt,
          @JsonKey(name: "profile") final Profile? profile}) =
      _$GetProfileResponseImpl;

  factory _GetProfileResponse.fromJson(Map<String, dynamic> json) =
      _$GetProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "email_verify")
  String? get emailVerify;
  @override
  @JsonKey(name: "full_name")
  String? get fullName;
  @override
  @JsonKey(name: "dateOfBirth")
  dynamic get dateOfBirth;
  @override
  @JsonKey(name: "mobile")
  dynamic get mobile;
  @override
  @JsonKey(name: "gender")
  dynamic get gender;
  @override
  @JsonKey(name: "profile_image")
  dynamic get profileImage;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "profile_id")
  String? get profileId;
  @override
  @JsonKey(name: "created_by")
  dynamic get createdBy;
  @override
  @JsonKey(name: "updated_by")
  dynamic get updatedBy;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "profile")
  Profile? get profile;
  @override
  @JsonKey(ignore: true)
  _$$GetProfileResponseImplCopyWith<_$GetProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  String? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "updated_by") String? updatedBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "updated_by") String? updatedBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProfileImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "updated_by") this.updatedBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "created_by")
  final String? createdBy;
  @override
  @JsonKey(name: "updated_by")
  final String? updatedBy;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Profile(id: $id, title: $title, description: $description, type: $type, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, type,
      createdBy, updatedBy, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "updated_by") final String? updatedBy,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "created_by")
  String? get createdBy;
  @override
  @JsonKey(name: "updated_by")
  String? get updatedBy;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
