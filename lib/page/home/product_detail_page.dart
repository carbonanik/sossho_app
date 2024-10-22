import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/all_reviews_page.dart';
import 'package:sossho_app/page/cart_page.dart';
import 'package:sossho_app/providers/cart_provider.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/app_button.dart';

import '../../model/product.dart';
import '../../model/public_product_response.dart';
import '../../utils/colors.dart';
import '../../widgets/common_app_bar.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    const bottomBarHeight = 100.0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const MyAppBar(title: 'Product Detail'),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _scrollContent(
            context,
            bottomBarHeight,
          ),
          _bottomStatic(context, bottomBarHeight),
        ],
      ),
    );
  }

  Widget _scrollContent(BuildContext context, double bottomBarHeight) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            _productDetail(context),
            // _similarProducts(),
            Container(
              height: bottomBarHeight,
            ),
          ],
        ),
      ),
    );
  }

  Widget _productDetail(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Column(
        children: [
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 320,
              child: Image.network(
                jsonDecode(product.images)?[0]?["image_path"] ?? "",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.image);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.category ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          product.title ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 26,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context.push(const AllReviewsPage());
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              // Text(
                              //   ' (124 Reviews)',
                              //   style: TextStyle(
                              //     fontSize: 16,
                              //     color: Colors.grey,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     context.push(const AllReviewsPage());
                    //   },
                    //   child: const Icon(
                    //     Icons.favorite,
                    //     color: Colors.redAccent,
                    //   ),
                    // )
                  ],
                ),
                const SizedBox(height: 26),
                const Text(
                  'Product Detail',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  product.description ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _bottomStatic(BuildContext context, double bottomBarHeight) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: bottomBarHeight,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: const BoxDecoration(
              color: foregroundColor,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade100,
                      ),
                    ),
                    Text(
                      '${product.price} BDT',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 35,
                  width: 1,
                  color: accentColor,
                ),
                const SizedBox(
                  width: 15,
                ),

                /// view cart button
                Expanded(
                  child: Consumer(builder: (context, ref, child) {
                    final contains = ref.watch(
                      cartContainsProvider(productId: product.id ?? ''),
                    );
                    return AppButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            contains ? 'Go to cart' : 'Add to cart',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      onPressed: () {
                        if (contains) {
                          context.push(const MyCartPage());
                          return;
                        }
                        if (product.id == null) {
                          return;
                        }
                        ref
                            .read(shoppingCartProvider.notifier)
                            .addToCart(productId: product.id!, quantity: 1);
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
