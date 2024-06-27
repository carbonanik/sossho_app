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

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_price')
  String? get offerPrice => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_title')
  String? get metaTitle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String? get metaDescription => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_feature')
  List<String>? get mainFeature => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_faq')
  List<String>? get productFaq => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  dynamic get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? type,
      String? slug,
      String? category,
      String? price,
      @JsonKey(name: 'offer_price') String? offerPrice,
      String? brand,
      @JsonKey(name: 'meta_title') String? metaTitle,
      String? description,
      @JsonKey(name: 'meta_description') String? metaDescription,
      List<String>? images,
      @JsonKey(name: 'main_feature') List<String>? mainFeature,
      @JsonKey(name: 'product_faq') List<String>? productFaq,
      String? content,
      dynamic status,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'updated_by') dynamic updatedBy,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? slug = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? offerPrice = freezed,
    Object? brand = freezed,
    Object? metaTitle = freezed,
    Object? description = freezed,
    Object? metaDescription = freezed,
    Object? images = freezed,
    Object? mainFeature = freezed,
    Object? productFaq = freezed,
    Object? content = freezed,
    Object? status = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mainFeature: freezed == mainFeature
          ? _value.mainFeature
          : mainFeature // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productFaq: freezed == productFaq
          ? _value.productFaq
          : productFaq // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? type,
      String? slug,
      String? category,
      String? price,
      @JsonKey(name: 'offer_price') String? offerPrice,
      String? brand,
      @JsonKey(name: 'meta_title') String? metaTitle,
      String? description,
      @JsonKey(name: 'meta_description') String? metaDescription,
      List<String>? images,
      @JsonKey(name: 'main_feature') List<String>? mainFeature,
      @JsonKey(name: 'product_faq') List<String>? productFaq,
      String? content,
      dynamic status,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'updated_by') dynamic updatedBy,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? slug = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? offerPrice = freezed,
    Object? brand = freezed,
    Object? metaTitle = freezed,
    Object? description = freezed,
    Object? metaDescription = freezed,
    Object? images = freezed,
    Object? mainFeature = freezed,
    Object? productFaq = freezed,
    Object? content = freezed,
    Object? status = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      metaTitle: freezed == metaTitle
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      metaDescription: freezed == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mainFeature: freezed == mainFeature
          ? _value._mainFeature
          : mainFeature // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      productFaq: freezed == productFaq
          ? _value._productFaq
          : productFaq // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.id,
      this.title,
      this.type,
      this.slug,
      this.category,
      this.price,
      @JsonKey(name: 'offer_price') this.offerPrice,
      this.brand,
      @JsonKey(name: 'meta_title') this.metaTitle,
      this.description,
      @JsonKey(name: 'meta_description') this.metaDescription,
      final List<String>? images,
      @JsonKey(name: 'main_feature') final List<String>? mainFeature,
      @JsonKey(name: 'product_faq') final List<String>? productFaq,
      this.content,
      this.status,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _images = images,
        _mainFeature = mainFeature,
        _productFaq = productFaq;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? slug;
  @override
  final String? category;
  @override
  final String? price;
  @override
  @JsonKey(name: 'offer_price')
  final String? offerPrice;
  @override
  final String? brand;
  @override
  @JsonKey(name: 'meta_title')
  final String? metaTitle;
  @override
  final String? description;
  @override
  @JsonKey(name: 'meta_description')
  final String? metaDescription;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _mainFeature;
  @override
  @JsonKey(name: 'main_feature')
  List<String>? get mainFeature {
    final value = _mainFeature;
    if (value == null) return null;
    if (_mainFeature is EqualUnmodifiableListView) return _mainFeature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _productFaq;
  @override
  @JsonKey(name: 'product_faq')
  List<String>? get productFaq {
    final value = _productFaq;
    if (value == null) return null;
    if (_productFaq is EqualUnmodifiableListView) return _productFaq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? content;
  @override
  final dynamic status;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @override
  @JsonKey(name: 'updated_by')
  final dynamic updatedBy;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, type: $type, slug: $slug, category: $category, price: $price, offerPrice: $offerPrice, brand: $brand, metaTitle: $metaTitle, description: $description, metaDescription: $metaDescription, images: $images, mainFeature: $mainFeature, productFaq: $productFaq, content: $content, status: $status, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._mainFeature, _mainFeature) &&
            const DeepCollectionEquality()
                .equals(other._productFaq, _productFaq) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        type,
        slug,
        category,
        price,
        offerPrice,
        brand,
        metaTitle,
        description,
        metaDescription,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_mainFeature),
        const DeepCollectionEquality().hash(_productFaq),
        content,
        const DeepCollectionEquality().hash(status),
        createdBy,
        const DeepCollectionEquality().hash(updatedBy),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String? id,
      final String? title,
      final String? type,
      final String? slug,
      final String? category,
      final String? price,
      @JsonKey(name: 'offer_price') final String? offerPrice,
      final String? brand,
      @JsonKey(name: 'meta_title') final String? metaTitle,
      final String? description,
      @JsonKey(name: 'meta_description') final String? metaDescription,
      final List<String>? images,
      @JsonKey(name: 'main_feature') final List<String>? mainFeature,
      @JsonKey(name: 'product_faq') final List<String>? productFaq,
      final String? content,
      final dynamic status,
      @JsonKey(name: 'created_by') final String? createdBy,
      @JsonKey(name: 'updated_by') final dynamic updatedBy,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get type;
  @override
  String? get slug;
  @override
  String? get category;
  @override
  String? get price;
  @override
  @JsonKey(name: 'offer_price')
  String? get offerPrice;
  @override
  String? get brand;
  @override
  @JsonKey(name: 'meta_title')
  String? get metaTitle;
  @override
  String? get description;
  @override
  @JsonKey(name: 'meta_description')
  String? get metaDescription;
  @override
  List<String>? get images;
  @override
  @JsonKey(name: 'main_feature')
  List<String>? get mainFeature;
  @override
  @JsonKey(name: 'product_faq')
  List<String>? get productFaq;
  @override
  String? get content;
  @override
  dynamic get status;
  @override
  @JsonKey(name: 'created_by')
  String? get createdBy;
  @override
  @JsonKey(name: 'updated_by')
  dynamic get updatedBy;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
