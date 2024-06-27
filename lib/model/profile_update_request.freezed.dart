// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileUpdateRequest _$ProfileUpdateRequestFromJson(Map<String, dynamic> json) {
  return _ProfileUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileUpdateRequest {
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile")
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "dateOfBirth")
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  String? get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileUpdateRequestCopyWith<ProfileUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUpdateRequestCopyWith<$Res> {
  factory $ProfileUpdateRequestCopyWith(ProfileUpdateRequest value,
          $Res Function(ProfileUpdateRequest) then) =
      _$ProfileUpdateRequestCopyWithImpl<$Res, ProfileUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "gender") String? gender,
      @JsonKey(name: "mobile") String? mobile,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "dateOfBirth") String? dateOfBirth,
      @JsonKey(name: "profile_image") String? profileImage});
}

/// @nodoc
class _$ProfileUpdateRequestCopyWithImpl<$Res,
        $Val extends ProfileUpdateRequest>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  _$ProfileUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? mobile = freezed,
    Object? fullName = freezed,
    Object? dateOfBirth = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileUpdateRequestImplCopyWith<$Res>
    implements $ProfileUpdateRequestCopyWith<$Res> {
  factory _$$ProfileUpdateRequestImplCopyWith(_$ProfileUpdateRequestImpl value,
          $Res Function(_$ProfileUpdateRequestImpl) then) =
      __$$ProfileUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gender") String? gender,
      @JsonKey(name: "mobile") String? mobile,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "dateOfBirth") String? dateOfBirth,
      @JsonKey(name: "profile_image") String? profileImage});
}

/// @nodoc
class __$$ProfileUpdateRequestImplCopyWithImpl<$Res>
    extends _$ProfileUpdateRequestCopyWithImpl<$Res, _$ProfileUpdateRequestImpl>
    implements _$$ProfileUpdateRequestImplCopyWith<$Res> {
  __$$ProfileUpdateRequestImplCopyWithImpl(_$ProfileUpdateRequestImpl _value,
      $Res Function(_$ProfileUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? mobile = freezed,
    Object? fullName = freezed,
    Object? dateOfBirth = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$ProfileUpdateRequestImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileUpdateRequestImpl implements _ProfileUpdateRequest {
  const _$ProfileUpdateRequestImpl(
      {@JsonKey(name: "gender") this.gender,
      @JsonKey(name: "mobile") this.mobile,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "dateOfBirth") this.dateOfBirth,
      @JsonKey(name: "profile_image") this.profileImage});

  factory _$ProfileUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "mobile")
  final String? mobile;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "dateOfBirth")
  final String? dateOfBirth;
  @override
  @JsonKey(name: "profile_image")
  final String? profileImage;

  @override
  String toString() {
    return 'ProfileUpdateRequest(gender: $gender, mobile: $mobile, fullName: $fullName, dateOfBirth: $dateOfBirth, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileUpdateRequestImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, gender, mobile, fullName, dateOfBirth, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileUpdateRequestImplCopyWith<_$ProfileUpdateRequestImpl>
      get copyWith =>
          __$$ProfileUpdateRequestImplCopyWithImpl<_$ProfileUpdateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _ProfileUpdateRequest implements ProfileUpdateRequest {
  const factory _ProfileUpdateRequest(
          {@JsonKey(name: "gender") final String? gender,
          @JsonKey(name: "mobile") final String? mobile,
          @JsonKey(name: "full_name") final String? fullName,
          @JsonKey(name: "dateOfBirth") final String? dateOfBirth,
          @JsonKey(name: "profile_image") final String? profileImage}) =
      _$ProfileUpdateRequestImpl;

  factory _ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$ProfileUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "mobile")
  String? get mobile;
  @override
  @JsonKey(name: "full_name")
  String? get fullName;
  @override
  @JsonKey(name: "dateOfBirth")
  String? get dateOfBirth;
  @override
  @JsonKey(name: "profile_image")
  String? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$ProfileUpdateRequestImplCopyWith<_$ProfileUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
