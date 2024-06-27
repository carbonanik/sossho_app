import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/app_button.dart';

import '../providers/cart_provider.dart';
import '../utils/colors.dart';
import '../widgets/cart_list_item.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  final double bottomBarHeight = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("My Cart"),
        leading: const BackButton(
          color: Colors.lightGreen,
        ),
      ),
      body: Column(
        children: [_buildCartList(), _buildCartDetail()],
      ),
    );
  }

  SizedBox _buildCartDetail() {
    return SizedBox(
      height: bottomBarHeight,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.black54,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Total Price',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: (5),
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      final cart = ref.watch(cartProvider);
                      final totalPrice = cart.valueOrNull?.cart?.fold(
                        0.0,
                        (previousValue, element) {
                          final cartItemPrice =
                              double.parse(element.product?.price ?? '0.0') *
                                  double.parse(element.quantity ?? '0.0');
                          return previousValue + cartItemPrice;
                        },
                      );
                      return Text(
                        '$totalPrice ৳',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            /// Continue to pay button
            Expanded(
              child: AppButton(
                onPressed: () {
                  // Get.toNamed(RouteHelper.getPaymentMethod());
                  // AutoRouter.of(context).push(const PaymentMethodRoute());
                },
                child: const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartList() {
    return Expanded(
      child: Consumer(
        builder: (context, ref, child) {
          final cart = ref.watch(cartProvider);
          final isNotEmpty = cart.valueOrNull?.cart?.isNotEmpty == true;
          return isNotEmpty
              ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = cart.valueOrNull!.cart![index];
                    final quantity = double.tryParse(item.quantity ?? '0') ?? 0;
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 16, right: 16),
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
                          ref
                              .read(cartProvider.notifier)
                              .deleteCart(cartId: id);
                        },
                      ),
                    );
                  },
                  itemCount: cart.valueOrNull?.cart?.length ?? 0,
                )
              : const Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Center(child: Text('No item in cart')),
                );
        },
      ),
    );
  }
}
