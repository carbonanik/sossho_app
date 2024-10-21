import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sossho_app/model/product.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    @JsonKey(name: "products")
    List<Product>? products,
    @JsonKey(name: "popularProducts")
    List<Product>? popularProducts,
    @JsonKey(name: "hotDealProducts")
    List<Product>? hotDealProducts,
    @JsonKey(name: "topSellingProducts")
    List<Product>? topSellingProducts,
    @JsonKey(name: "trendingProducts")
    List<Product>? trendingProducts,
    @JsonKey(name: "recentlyAddedProducts")
    List<Product>? recentlyAddedProducts,
    @JsonKey(name: "topRatedProducts")
    List<Product>? topRatedProducts,
  }) = _HomeResponse;

  factory HomeResponse.fromJson(Map<String, dynamic> json) => _$HomeResponseFromJson(json);
}
