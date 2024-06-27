// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) {
  return _SignUpRequest.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestCopyWith<SignUpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestCopyWith<$Res> {
  factory $SignUpRequestCopyWith(
          SignUpRequest value, $Res Function(SignUpRequest) then) =
      _$SignUpRequestCopyWithImpl<$Res, SignUpRequest>;
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'full_name') String fullName,
      String mobile,
      String dateOfBirth,
      String gender});
}

/// @nodoc
class _$SignUpRequestCopyWithImpl<$Res, $Val extends SignUpRequest>
    implements $SignUpRequestCopyWith<$Res> {
  _$SignUpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? fullName = null,
    Object? mobile = null,
    Object? dateOfBirth = null,
    Object? gender = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestImplCopyWith<$Res>
    implements $SignUpRequestCopyWith<$Res> {
  factory _$$SignUpRequestImplCopyWith(
          _$SignUpRequestImpl value, $Res Function(_$SignUpRequestImpl) then) =
      __$$SignUpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      @JsonKey(name: 'full_name') String fullName,
      String mobile,
      String dateOfBirth,
      String gender});
}

/// @nodoc
class __$$SignUpRequestImplCopyWithImpl<$Res>
    extends _$SignUpRequestCopyWithImpl<$Res, _$SignUpRequestImpl>
    implements _$$SignUpRequestImplCopyWith<$Res> {
  __$$SignUpRequestImplCopyWithImpl(
      _$SignUpRequestImpl _value, $Res Function(_$SignUpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? fullName = null,
    Object? mobile = null,
    Object? dateOfBirth = null,
    Object? gender = null,
  }) {
    return _then(_$SignUpRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestImpl implements _SignUpRequest {
  const _$SignUpRequestImpl(
      {required this.email,
      required this.password,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.mobile,
      required this.dateOfBirth,
      required this.gender});

  factory _$SignUpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final String mobile;
  @override
  final String dateOfBirth;
  @override
  final String gender;

  @override
  String toString() {
    return 'SignUpRequest(email: $email, password: $password, fullName: $fullName, mobile: $mobile, dateOfBirth: $dateOfBirth, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, fullName, mobile, dateOfBirth, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestImplCopyWith<_$SignUpRequestImpl> get copyWith =>
      __$$SignUpRequestImplCopyWithImpl<_$SignUpRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequest implements SignUpRequest {
  const factory _SignUpRequest(
      {required final String email,
      required final String password,
      @JsonKey(name: 'full_name') required final String fullName,
      required final String mobile,
      required final String dateOfBirth,
      required final String gender}) = _$SignUpRequestImpl;

  factory _SignUpRequest.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  String get mobile;
  @override
  String get dateOfBirth;
  @override
  String get gender;
  @override
  @JsonKey(ignore: true)
  _$$SignUpRequestImplCopyWith<_$SignUpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
