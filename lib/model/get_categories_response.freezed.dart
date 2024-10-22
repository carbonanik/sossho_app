// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCategoriesResponse _$GetCategoriesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCategoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCategoriesResponse {
  @JsonKey(name: "product_category")
  List<ProductCategory>? get productCategory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "metaData")
  MetaData? get metaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCategoriesResponseCopyWith<GetCategoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesResponseCopyWith<$Res> {
  factory $GetCategoriesResponseCopyWith(GetCategoriesResponse value,
          $Res Function(GetCategoriesResponse) then) =
      _$GetCategoriesResponseCopyWithImpl<$Res, GetCategoriesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_category")
      List<ProductCategory>? productCategory,
      @JsonKey(name: "metaData") MetaData? metaData});

  $MetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class _$GetCategoriesResponseCopyWithImpl<$Res,
        $Val extends GetCategoriesResponse>
    implements $GetCategoriesResponseCopyWith<$Res> {
  _$GetCategoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_value.copyWith(
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
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
abstract class _$$GetCategoriesResponseImplCopyWith<$Res>
    implements $GetCategoriesResponseCopyWith<$Res> {
  factory _$$GetCategoriesResponseImplCopyWith(
          _$GetCategoriesResponseImpl value,
          $Res Function(_$GetCategoriesResponseImpl) then) =
      __$$GetCategoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_category")
      List<ProductCategory>? productCategory,
      @JsonKey(name: "metaData") MetaData? metaData});

  @override
  $MetaDataCopyWith<$Res>? get metaData;
}

/// @nodoc
class __$$GetCategoriesResponseImplCopyWithImpl<$Res>
    extends _$GetCategoriesResponseCopyWithImpl<$Res,
        _$GetCategoriesResponseImpl>
    implements _$$GetCategoriesResponseImplCopyWith<$Res> {
  __$$GetCategoriesResponseImplCopyWithImpl(_$GetCategoriesResponseImpl _value,
      $Res Function(_$GetCategoriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = freezed,
    Object? metaData = freezed,
  }) {
    return _then(_$GetCategoriesResponseImpl(
      productCategory: freezed == productCategory
          ? _value._productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCategoriesResponseImpl implements _GetCategoriesResponse {
  const _$GetCategoriesResponseImpl(
      {@JsonKey(name: "product_category")
      final List<ProductCategory>? productCategory,
      @JsonKey(name: "metaData") this.metaData})
      : _productCategory = productCategory;

  factory _$GetCategoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCategoriesResponseImplFromJson(json);

  final List<ProductCategory>? _productCategory;
  @override
  @JsonKey(name: "product_category")
  List<ProductCategory>? get productCategory {
    final value = _productCategory;
    if (value == null) return null;
    if (_productCategory is EqualUnmodifiableListView) return _productCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "metaData")
  final MetaData? metaData;

  @override
  String toString() {
    return 'GetCategoriesResponse(productCategory: $productCategory, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._productCategory, _productCategory) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_productCategory), metaData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesResponseImplCopyWith<_$GetCategoriesResponseImpl>
      get copyWith => __$$GetCategoriesResponseImplCopyWithImpl<
          _$GetCategoriesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCategoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCategoriesResponse implements GetCategoriesResponse {
  const factory _GetCategoriesResponse(
          {@JsonKey(name: "product_category")
          final List<ProductCategory>? productCategory,
          @JsonKey(name: "metaData") final MetaData? metaData}) =
      _$GetCategoriesResponseImpl;

  factory _GetCategoriesResponse.fromJson(Map<String, dynamic> json) =
      _$GetCategoriesResponseImpl.fromJson;

  @override
  @JsonKey(name: "product_category")
  List<ProductCategory>? get productCategory;
  @override
  @JsonKey(name: "metaData")
  MetaData? get metaData;
  @override
  @JsonKey(ignore: true)
  _$$GetCategoriesResponseImplCopyWith<_$GetCategoriesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetaData _$MetaDataFromJson(Map<String, dynamic> json) {
  return _MetaData.fromJson(json);
}

/// @nodoc
mixin _$MetaData {
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "start")
  int? get start => throw _privateConstructorUsedError;
  @JsonKey(name: "end")
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
  $Res call(
      {@JsonKey(name: "limit") int? limit,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "start") int? start,
      @JsonKey(name: "end") int? end});
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
  $Res call(
      {@JsonKey(name: "limit") int? limit,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "start") int? start,
      @JsonKey(name: "end") int? end});
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
      {@JsonKey(name: "limit") this.limit,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "start") this.start,
      @JsonKey(name: "end") this.end});

  factory _$MetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataImplFromJson(json);

  @override
  @JsonKey(name: "limit")
  final int? limit;
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "start")
  final int? start;
  @override
  @JsonKey(name: "end")
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
      {@JsonKey(name: "limit") final int? limit,
      @JsonKey(name: "page") final int? page,
      @JsonKey(name: "total") final int? total,
      @JsonKey(name: "start") final int? start,
      @JsonKey(name: "end") final int? end}) = _$MetaDataImpl;

  factory _MetaData.fromJson(Map<String, dynamic> json) =
      _$MetaDataImpl.fromJson;

  @override
  @JsonKey(name: "limit")
  int? get limit;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "start")
  int? get start;
  @override
  @JsonKey(name: "end")
  int? get end;
  @override
  @JsonKey(ignore: true)
  _$$MetaDataImplCopyWith<_$MetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_top")
  dynamic get isTop => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_title")
  String? get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "meta_description")
  String? get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "carousel_image")
  String? get carouselImage => throw _privateConstructorUsedError;
  @JsonKey(name: "product_type")
  dynamic get productType => throw _privateConstructorUsedError;
  @JsonKey(name: "product_category_faq")
  dynamic get productCategoryFaq => throw _privateConstructorUsedError;
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
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "is_top") dynamic isTop,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "meta_title") String? metaTitle,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "meta_description") String? metaDescription,
      @JsonKey(name: "carousel_image") String? carouselImage,
      @JsonKey(name: "product_type") dynamic productType,
      @JsonKey(name: "product_category_faq") dynamic productCategoryFaq,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "updated_by") String? updatedBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isTop = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? metaTitle = freezed,
    Object? description = freezed,
    Object? metaDescription = freezed,
    Object? carouselImage = freezed,
    Object? productType = freezed,
    Object? productCategoryFaq = freezed,
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
      isTop: freezed == isTop
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      carouselImage: freezed == carouselImage
          ? _value.carouselImage
          : carouselImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productCategoryFaq: freezed == productCategoryFaq
          ? _value.productCategoryFaq
          : productCategoryFaq // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(_$ProductCategoryImpl value,
          $Res Function(_$ProductCategoryImpl) then) =
      __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "is_top") dynamic isTop,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "meta_title") String? metaTitle,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "meta_description") String? metaDescription,
      @JsonKey(name: "carousel_image") String? carouselImage,
      @JsonKey(name: "product_type") dynamic productType,
      @JsonKey(name: "product_category_faq") dynamic productCategoryFaq,
      @JsonKey(name: "created_by") String? createdBy,
      @JsonKey(name: "updated_by") String? updatedBy,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
      _$ProductCategoryImpl _value, $Res Function(_$ProductCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isTop = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? metaTitle = freezed,
    Object? description = freezed,
    Object? metaDescription = freezed,
    Object? carouselImage = freezed,
    Object? productType = freezed,
    Object? productCategoryFaq = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isTop: freezed == isTop
          ? _value.isTop
          : isTop // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
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
      carouselImage: freezed == carouselImage
          ? _value.carouselImage
          : carouselImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productCategoryFaq: freezed == productCategoryFaq
          ? _value.productCategoryFaq
          : productCategoryFaq // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "is_top") this.isTop,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "meta_title") this.metaTitle,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "meta_description") this.metaDescription,
      @JsonKey(name: "carousel_image") this.carouselImage,
      @JsonKey(name: "product_type") this.productType,
      @JsonKey(name: "product_category_faq") this.productCategoryFaq,
      @JsonKey(name: "created_by") this.createdBy,
      @JsonKey(name: "updated_by") this.updatedBy,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "is_top")
  final dynamic isTop;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "meta_title")
  final String? metaTitle;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "meta_description")
  final String? metaDescription;
  @override
  @JsonKey(name: "carousel_image")
  final String? carouselImage;
  @override
  @JsonKey(name: "product_type")
  final dynamic productType;
  @override
  @JsonKey(name: "product_category_faq")
  final dynamic productCategoryFaq;
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
    return 'ProductCategory(id: $id, isTop: $isTop, title: $title, slug: $slug, metaTitle: $metaTitle, description: $description, metaDescription: $metaDescription, carouselImage: $carouselImage, productType: $productType, productCategoryFaq: $productCategoryFaq, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.isTop, isTop) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.metaTitle, metaTitle) ||
                other.metaTitle == metaTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.carouselImage, carouselImage) ||
                other.carouselImage == carouselImage) &&
            const DeepCollectionEquality()
                .equals(other.productType, productType) &&
            const DeepCollectionEquality()
                .equals(other.productCategoryFaq, productCategoryFaq) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(isTop),
      title,
      slug,
      metaTitle,
      description,
      metaDescription,
      carouselImage,
      const DeepCollectionEquality().hash(productType),
      const DeepCollectionEquality().hash(productCategoryFaq),
      createdBy,
      updatedBy,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "is_top") final dynamic isTop,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "meta_title") final String? metaTitle,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "meta_description") final String? metaDescription,
      @JsonKey(name: "carousel_image") final String? carouselImage,
      @JsonKey(name: "product_type") final dynamic productType,
      @JsonKey(name: "product_category_faq") final dynamic productCategoryFaq,
      @JsonKey(name: "created_by") final String? createdBy,
      @JsonKey(name: "updated_by") final String? updatedBy,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at")
      final DateTime? updatedAt}) = _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "is_top")
  dynamic get isTop;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "meta_title")
  String? get metaTitle;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "meta_description")
  String? get metaDescription;
  @override
  @JsonKey(name: "carousel_image")
  String? get carouselImage;
  @override
  @JsonKey(name: "product_type")
  dynamic get productType;
  @override
  @JsonKey(name: "product_category_faq")
  dynamic get productCategoryFaq;
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
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarouselImage _$CarouselImageFromJson(Map<String, dynamic> json) {
  return _CarouselImage.fromJson(json);
}

/// @nodoc
mixin _$CarouselImage {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image_path")
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselImageCopyWith<CarouselImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselImageCopyWith<$Res> {
  factory $CarouselImageCopyWith(
          CarouselImage value, $Res Function(CarouselImage) then) =
      _$CarouselImageCopyWithImpl<$Res, CarouselImage>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "image_path") String? imagePath});
}

/// @nodoc
class _$CarouselImageCopyWithImpl<$Res, $Val extends CarouselImage>
    implements $CarouselImageCopyWith<$Res> {
  _$CarouselImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarouselImageImplCopyWith<$Res>
    implements $CarouselImageCopyWith<$Res> {
  factory _$$CarouselImageImplCopyWith(
          _$CarouselImageImpl value, $Res Function(_$CarouselImageImpl) then) =
      __$$CarouselImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "image_path") String? imagePath});
}

/// @nodoc
class __$$CarouselImageImplCopyWithImpl<$Res>
    extends _$CarouselImageCopyWithImpl<$Res, _$CarouselImageImpl>
    implements _$$CarouselImageImplCopyWith<$Res> {
  __$$CarouselImageImplCopyWithImpl(
      _$CarouselImageImpl _value, $Res Function(_$CarouselImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$CarouselImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarouselImageImpl implements _CarouselImage {
  const _$CarouselImageImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "image_path") this.imagePath});

  factory _$CarouselImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarouselImageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "image_path")
  final String? imagePath;

  @override
  String toString() {
    return 'CarouselImage(id: $id, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselImageImplCopyWith<_$CarouselImageImpl> get copyWith =>
      __$$CarouselImageImplCopyWithImpl<_$CarouselImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarouselImageImplToJson(
      this,
    );
  }
}

abstract class _CarouselImage implements CarouselImage {
  const factory _CarouselImage(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "image_path") final String? imagePath}) =
      _$CarouselImageImpl;

  factory _CarouselImage.fromJson(Map<String, dynamic> json) =
      _$CarouselImageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "image_path")
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$CarouselImageImplCopyWith<_$CarouselImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
