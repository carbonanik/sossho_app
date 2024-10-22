// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories_public_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
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
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
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
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
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
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
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
    return _then(_$CategoryImpl(
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
class _$CategoryImpl with DiagnosticableTreeMixin implements _Category {
  const _$CategoryImpl(
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

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Category(id: $id, isTop: $isTop, title: $title, slug: $slug, metaTitle: $metaTitle, description: $description, metaDescription: $metaDescription, carouselImage: $carouselImage, productType: $productType, productCategoryFaq: $productCategoryFaq, createdBy: $createdBy, updatedBy: $updatedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Category'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isTop', isTop))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('metaTitle', metaTitle))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('metaDescription', metaDescription))
      ..add(DiagnosticsProperty('carouselImage', carouselImage))
      ..add(DiagnosticsProperty('productType', productType))
      ..add(DiagnosticsProperty('productCategoryFaq', productCategoryFaq))
      ..add(DiagnosticsProperty('createdBy', createdBy))
      ..add(DiagnosticsProperty('updatedBy', updatedBy))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
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
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
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
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

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
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
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
class _$CarouselImageImpl
    with DiagnosticableTreeMixin
    implements _CarouselImage {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CarouselImage(id: $id, imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CarouselImage'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('imagePath', imagePath));
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
