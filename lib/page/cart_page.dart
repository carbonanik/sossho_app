import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/model/create_order_request.dart';
import 'package:sossho_app/page/checkout_page.dart';
import 'package:sossho_app/page/my_order_page.dart';
import 'package:sossho_app/providers/api_provider.dart';
import 'package:sossho_app/utils/error_as_value.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/utils/show_snack_bar.dart';
import 'package:sossho_app/widgets/app_button.dart';

import '../providers/cart_provider.dart';
import '../utils/colors.dart';
import '../widgets/cart_list_item.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("My Cart")),
      body: CustomScrollView(
        slivers: [
          _buildCartList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildCartDetail(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartDetail() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black54,
          child: Column(
            children: [
              const SizedBox(height: 12),
              Consumer(builder: (context, ref, child) {
                final cart = ref.watch(cartProvider);
                final totalPrice = cart.valueOrNull?.cart?.fold(
                      0.0,
                      (previousValue, element) {
                        final cartItemPrice =
                            double.parse(element.product?.price ?? '0.0') *
                                double.parse(element.quantity ?? '0.0');
                        return previousValue + cartItemPrice;
                      },
                    ) ??
                    0;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Sub Total Price',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '$totalPrice ৳',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        Text(
                          'Shipping Fee',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '100 ৳',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '100 ৳',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Coupon code',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: Colors.white24,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 11),
                          //edgeInsets from textfiela
                          decoration: const BoxDecoration(
                            color: Colors.white12,
                          ),
                          child: const Text(
                            'Apply',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Text(
                          'Total Price',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '$totalPrice ৳',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                );
              }),

              /// Continue to pay button
              Consumer(builder: (context, ref, child) {
                return AppButton(
                  onPressed: () async {
                   // context.push(CheckoutPage());

                  },
                  child: const Text('Proceed to Checkout'),
                );
              }),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCartList() {
    return Consumer(
      builder: (context, ref, child) {
        final cart = ref.watch(cartProvider);
        final isNotEmpty = cart.valueOrNull?.cart?.isNotEmpty == true;
        return isNotEmpty
            ? SliverList.builder(
                // physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = cart.valueOrNull!
                      .cart![index % (cart.valueOrNull?.cart?.length ?? 0)];
                  final quantity = double.tryParse(item.quantity ?? '0') ?? 0;
                  return Padding(
                    padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
                    child: CartListItem(
                      item: item,
                      onAdd: (id) {
                        ref
                            .read(cartProvider.notifier)
                            .addToCart(productId: id, quantity: 1);
                      },
                      onRemove: (id) {
                        if (quantity > 1) {
                          ref
                              .read(cartProvider.notifier)
                              .addToCart(productId: id, quantity: -1);
                        }
                      },
                      onDelete: (id) {
                        ref.read(cartProvider.notifier).deleteCart(cartId: id);
                      },
                    ),
                  );
                },
                itemCount: cart.valueOrNull?.cart?.length ?? 0,
              )
            : const SliverPadding(
                padding: EdgeInsets.only(top: 100),
                // child: Center(child: Text('No item in cart')),
              );
      },
    );
  }
}
