// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_billing_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBillingAddressResponse _$GetBillingAddressResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBillingAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBillingAddressResponse {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "province")
  String? get province => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "area")
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  dynamic get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBillingAddressResponseCopyWith<GetBillingAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBillingAddressResponseCopyWith<$Res> {
  factory $GetBillingAddressResponseCopyWith(GetBillingAddressResponse value,
          $Res Function(GetBillingAddressResponse) then) =
      _$GetBillingAddressResponseCopyWithImpl<$Res, GetBillingAddressResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "province") String? province,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "area") String? area,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "landmark") String? landmark,
      @JsonKey(name: "created_by") dynamic createdBy,
      @JsonKey(name: "updated_by") dynamic updatedBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$GetBillingAddressResponseCopyWithImpl<$Res,
        $Val extends GetBillingAddressResponse>
    implements $GetBillingAddressResponseCopyWith<$Res> {
  _$GetBillingAddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? area = freezed,
    Object? address = freezed,
    Object? landmark = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBillingAddressResponseImplCopyWith<$Res>
    implements $GetBillingAddressResponseCopyWith<$Res> {
  factory _$$GetBillingAddressResponseImplCopyWith(
          _$GetBillingAddressResponseImpl value,
          $Res Function(_$GetBillingAddressResponseImpl) then) =
      __$$GetBillingAddressResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "full_name") String? fullName,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "province") String? province,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "area") String? area,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "landmark") String? landmark,
      @JsonKey(name: "created_by") dynamic createdBy,
      @JsonKey(name: "updated_by") dynamic updatedBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$GetBillingAddressResponseImplCopyWithImpl<$Res>
    extends _$GetBillingAddressResponseCopyWithImpl<$Res,
        _$GetBillingAddressResponseImpl>
    implements _$$GetBillingAddressResponseImplCopyWith<$Res> {
  __$$GetBillingAddressResponseImplCopyWithImpl(
      _$GetBillingAddressResponseImpl _value,
      $Res Function(_$GetBillingAddressResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? area = freezed,
    Object? address = freezed,
    Object? landmark = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GetBillingAddressResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBillingAddressResponseImpl implements _GetBillingAddressResponse {
  const _$GetBillingAddressResponseImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "province") this.province,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "area") this.area,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "landmark") this.landmark,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "updated_by") this.updatedBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$GetBillingAddressResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBillingAddressResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "province")
  final String? province;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "area")
  final String? area;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "landmark")
  final String? landmark;
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
  String toString() {
    return 'GetBillingAddressResponse(id: $id, userId: $userId, fullName: $fullName, phone: $phone, province: $province, city: $city, area: $area, address: $address, landmark: $landmark, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBillingAddressResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      fullName,
      phone,
      province,
      city,
      area,
      address,
      landmark,
      const DeepCollectionEquality().hash(createdBy),
      const DeepCollectionEquality().hash(updatedBy),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBillingAddressResponseImplCopyWith<_$GetBillingAddressResponseImpl>
      get copyWith => __$$GetBillingAddressResponseImplCopyWithImpl<
          _$GetBillingAddressResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBillingAddressResponseImplToJson(
      this,
    );
  }
}

abstract class _GetBillingAddressResponse implements GetBillingAddressResponse {
  const factory _GetBillingAddressResponse(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "user_id") final String? userId,
          @JsonKey(name: "full_name") final String? fullName,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "province") final String? province,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "area") final String? area,
          @JsonKey(name: "address") final String? address,
          @JsonKey(name: "landmark") final String? landmark,
          @JsonKey(name: "created_by") final dynamic createdBy,
          @JsonKey(name: "updated_by") final dynamic updatedBy,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt}) =
      _$GetBillingAddressResponseImpl;

  factory _GetBillingAddressResponse.fromJson(Map<String, dynamic> json) =
      _$GetBillingAddressResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "full_name")
  String? get fullName;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "province")
  String? get province;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "area")
  String? get area;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "landmark")
  String? get landmark;
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
  @JsonKey(ignore: true)
  _$$GetBillingAddressResponseImplCopyWith<_$GetBillingAddressResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
