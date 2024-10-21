import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sossho_app/model/product.dart';

part 'get_cart_response.freezed.dart';

part 'get_cart_response.g.dart';

@freezed
class GetCartResponse with _$GetCartResponse {
  const factory GetCartResponse({
    List<Cart>? cart,
    MetaData? metaData,
  }) = _GetCartResponse;

  factory GetCartResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartResponseFromJson(json);
}

@freezed
class Cart with _$Cart {
  const factory Cart({
    String? id,
    @JsonKey(name: 'product_id')
    String? productId,
    @JsonKey(name: 'user_id')
    String? userId,
    String? quantity,
    @JsonKey(name: 'created_by')
    dynamic createdBy,
    @JsonKey(name: 'updated_by')
    dynamic updatedBy,
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(name: 'updated_at')
    DateTime? updatedAt,
    Product? product,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class MetaData with _$MetaData {
  const factory MetaData({
    int? limit,
    int? page,
    int? total,
    int? start,
    int? end,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}
