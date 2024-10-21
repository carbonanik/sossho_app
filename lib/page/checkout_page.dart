// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_sslcommerz/model/SSLCCustomerInfoInitializer.dart';
// import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
// import 'package:flutter_sslcommerz/model/SSLCShipmentInfoInitializer.dart';
// import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
// import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
// import 'package:flutter_sslcommerz/model/sslproductinitilizer/General.dart';
// import 'package:flutter_sslcommerz/model/sslproductinitilizer/SSLCProductInitializer.dart';
// import 'package:flutter_sslcommerz/sslcommerz.dart';
// import 'package:sossho_app/utils/error_as_value.dart';
// import 'package:sossho_app/utils/navigation.dart';

// import '../model/create_order_request.dart';
// import '../providers/api_provider.dart';
// import '../providers/cart_provider.dart';
// import '../utils/show_snack_bar.dart';
// import '../widgets/app_button.dart';

// class CheckoutPage extends StatefulWidget {
//   const CheckoutPage({super.key});

//   @override
//   State<CheckoutPage> createState() => _CheckoutPageState();
// }

// class _CheckoutPageState extends State<CheckoutPage> {
//   late final Sslcommerz sslcommerz;

//   @override
//   void initState() {
//     sslcommerz = Sslcommerz(
//       initializer: SSLCommerzInitialization(
//         // ipn_url: "www.ipnurl.com",
//         multi_card_name: "visa,master,bkash",
//         currency: SSLCurrencyType.BDT,
//         product_category: "Food",
//         sdkType: SSLCSdkType.TESTBOX,
//         store_id: "codek668244863e9c8",
//         store_passwd: "codek668244863e9c8@ssl",
//         total_amount: 10,
//         tran_id: "custom_transaction_id",
//       ),
//     );

//     sslcommerz.addCustomerInfoInitializer(
//       customerInfoInitializer: SSLCCustomerInfoInitializer(
//         customerState: "Chattogram",
//         customerName: "Abu Sayed Chowdhury",
//         customerEmail: "sayem227@gmail.com",
//         customerAddress1: "Chattogram",
//         customerCity: "Chattogram",
//         customerPostCode: "200",
//         customerCountry: "Bangladesh",
//         customerPhone: '01812345678',
//       ),
//     );

//     sslcommerz.addProductInitializer(
//       sslcProductInitializer: SSLCProductInitializer(
//         productName: "Water Filter",
//         productCategory: "Widgets",
//         general: General(
//           general: "General Purpose",
//           productProfile: "Product Profile",
//         ),
//       ),
//     );

//     sslcommerz.addShipmentInfoInitializer(
//       sslcShipmentInfoInitializer: SSLCShipmentInfoInitializer(
//         shipmentMethod: "yes",
//         numOfItems: 5,
//         shipmentDetails: ShipmentDetails(
//           shipAddress1: "Ship address 1",
//           shipCity: "Faridpur",
//           shipCountry: "Bangladesh",
//           shipName: "Ship name 1",
//           shipPostCode: "7860",
//         ),
//       ),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Checkout'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Shipping Address",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18,
//               ),
//             ),
//             const SizedBox(height: 16),
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: const Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("John Doe"),
//                       Text("Change",
//                           style: TextStyle(color: Colors.lightGreen)),
//                     ],
//                   ),
//                   SizedBox(height: 16),
//                   Text('123 Main St,\n Anytown, USA 12345'),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 16),
//             Consumer(builder: (context, ref, child) {
//               return AppButton(
//                 child: const Text("Place Order"),
//                 onPressed: () async {
//                   final model = await sslcommerz.payNow();
//                   print(model.status);
//                   print(model.bankTranId);
//                   print(model.aPIConnect);
//                   if (model.status == "VALID" && model.bankTranId != null) {
//                     final cart = ref.read(cartProvider);
//                     final api = await ref.read(secureApiProvider.future);
//                     final res = await api
//                         .createOrder(
//                           request: CreateOrderRequest(
//                             billingAddress: const Address(
//                               city: 'Dhaka',
//                               country: 'Bangladesh',
//                               state: 'Dhaka',
//                               street: 'Dhaka',
//                               zipcode: '1000',
//                             ),
//                             deliveryAddress: const Address(
//                               city: 'Dhaka',
//                               country: 'Bangladesh',
//                               state: 'Dhaka',
//                               street: 'Dhaka',
//                               zipcode: '1000',
//                             ),
//                             discountAmount: 0,
//                             paymentMethod: 'ONLINE',
//                             productId: cart.valueOrNull?.cart?.firstOrNull
//                                     ?.productId ??
//                                 '',
//                             quantity: int.tryParse(cart.valueOrNull?.cart
//                                         ?.firstOrNull?.quantity ??
//                                     '0') ??
//                                 0,
//                           ),
//                         )
//                         .errorAsValue();

//                     if (!context.mounted) return;
//                     if (res is AsyncData) {
//                       showSnackBar(
//                           context, 'Order Placed Successfully', Colors.green);
//                     }
//                     if (res is AsyncError) {
//                       showSnackBar(
//                           context, res.error.toString(), Colors.redAccent);
//                     }
//                     ref.invalidate(cartProvider);
//                   } else {
//                     if (!context.mounted) return;
//                     showSnackBar(context, 'Payment Failed', Colors.redAccent);
//                   }
//                 },
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
