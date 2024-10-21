// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PublicProductResponse _$PublicProductResponseFromJson(
    Map<String, dynamic> json) {
  return _PublicProductResponse.fromJson(json);
}

/// @nodoc
mixin _$PublicProductResponse {
  List<Product>? get products => throw _privateConstructorUsedError;
  MetaData? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicProductResponseCopyWith<PublicProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicProductResponseCopyWith<$Res> {
  factory $PublicProductResponseCopyWith(PublicProductResponse value,
          $Res Function(PublicProductResponse) then) =
      _$PublicProductResponseCopyWithImpl<$Res, PublicProductResponse>;
  @useResult
  $Res call({List<Product>? products, MetaData? metaData});

  $MetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$PublicProductResponseCopyWithImpl<$Res,
        $Val extends PublicProductResponse>
    implements $PublicProductResponseCopyWith<$Res> {
  _$PublicProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDataCopyWith<$Res>? get metaData {
    if (_value.metaData == null) {
      return null;
    }

    return $MetaDataCopyWith<$Res>(_value.metaData!, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PublicProductResponseImplCopyWith<$Res>
    implements $PublicProductResponseCopyWith<$Res> {
  factory _$$PublicProductResponseImplCopyWith(
          _$PublicProductResponseImpl value,
          $Res Function(_$PublicProductResponseImpl) then) =
      __$$PublicProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? products, MetaData? metaData});

  @override
  $MetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$PublicProductResponseImplCopyWithImpl<$Res>
    extends _$PublicProductResponseCopyWithImpl<$Res,
        _$PublicProductResponseImpl>
    implements _$$PublicProductResponseImplCopyWith<$Res> {
  __$$PublicProductResponseImplCopyWithImpl(_$PublicProductResponseImpl _value,
      $Res Function(_$PublicProductResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_$PublicProductResponseImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicProductResponseImpl implements _PublicProductResponse {
  const _$PublicProductResponseImpl(
      {final List<Product>? products, this.metaData})
      : _products = products;

  factory _$PublicProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicProductResponseImplFromJson(json);

  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MetaData? metaData;

  @override
  String toString() {
    return 'PublicProductResponse(products: $products, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicProductResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), metaData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicProductResponseImplCopyWith<_$PublicProductResponseImpl>
      get copyWith => __$$PublicProductResponseImplCopyWithImpl<
          _$PublicProductResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicProductResponseImplToJson(
      this,
    );
  }
}

abstract class _PublicProductResponse implements PublicProductResponse {
  const factory _PublicProductResponse(
      {final List<Product>? products,
      final MetaData? metaData}) = _$PublicProductResponseImpl;

  factory _PublicProductResponse.fromJson(Map<String, dynamic> json) =
      _$PublicProductResponseImpl.fromJson;

  @override
  List<Product>? get products;
  @override
  MetaData? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$PublicProductResponseImplCopyWith<_$PublicProductResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDataCopyWith<MetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataCopyWith<$Res> {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) then) =
      _$MetaDataCopyWithImpl<$Res, MetaData>;
  @useResult
  $Res call({int? limit, int? page, int? total, int? start, int? end});
}

/// @nodoc
class _$MetaDataCopyWithImpl<$Res, $Val extends MetaData>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDataImplCopyWith<$Res>
    implements $MetaDataCopyWith<$Res> {
  factory _$$MetaDataImplCopyWith(
          _$MetaDataImpl value, $Res Function(_$MetaDataImpl) then) =
      __$$MetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? limit, int? page, int? total, int? start, int? end});
}

/// @nodoc
class __$$MetaDataImplCopyWithImpl<$Res>
    extends _$MetaDataCopyWithImpl<$Res, _$MetaDataImpl>
    implements _$$MetaDataImplCopyWith<$Res> {
  __$$MetaDataImplCopyWithImpl(
      _$MetaDataImpl _value, $Res Function(_$MetaDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? total = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$MetaDataImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDataImpl implements _MetaData {
  const _$MetaDataImpl(
      {this.limit, this.page, this.total, this.start, this.end});

  factory _$MetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataImplFromJson(json);

  @override
  final int? limit;
  @override
  final int? page;
  @override
  final int? total;
  @override
  final int? start;
  @override
  final int? end;

  @override
  String toString() {
    return 'MetaData(limit: $limit, page: $page, total: $total, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDataImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, page, total, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      __$$MetaDataImplCopyWithImpl<_$MetaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataImplToJson(
      this,
    );
  }
}

abstract class _MetaData implements MetaData {
  const factory _MetaData(
      {final int? limit,
      final int? page,
      final int? total,
      final int? start,
      final int? end}) = _$MetaDataImpl;

  factory _MetaData.fromJson(Map<String, dynamic> json) =
      _$MetaDataImpl.fromJson;

  @override
  int? get limit;
  @override
  int? get page;
  @override
  int? get total;
  @override
  int? get start;
  @override
  int? get end;
  @override
  @JsonKey(ignore: true)
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
