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
// import 'package:sossho_app/page/profile/view_delivery_address_page.dart';
// import 'package:sossho_app/providers/delivery_address_provider.dart';
// import 'package:sossho_app/utils/error_as_value.dart';
// import 'package:sossho_app/utils/navigation.dart';

// import '../model/create_order_request.dart';
// import '../model/get_cart_response.dart';
// import '../providers/api_provider.dart';
// import '../providers/billing_address_provider.dart';
// import '../providers/cart_provider.dart';
// import '../utils/show_snack_bar.dart';
// import '../widgets/app_button.dart';

// class CheckoutPage extends StatefulWidget {
//   const CheckoutPage({
//     super.key,
//     required this.selectedItems,
//   });

//   final List<Cart> selectedItems;

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
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 16),
//               const Text(
//                 "Product List",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               _buildProductList(),
//               const SizedBox(height: 16),
//               const Text(
//                 "Shipping Address",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               _buildDeliveryAddressView(),
//               const SizedBox(height: 16),
//               _buildOrderPlaceButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildProductList() {
//     return ListView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemBuilder: (context, index) {
//         final item = widget.selectedItems[index % widget.selectedItems.length];
//         final quantity = double.tryParse(item.quantity ?? '0') ?? 0;
//         return Container(
//           margin: const EdgeInsets.only(top: 8),
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 1,
//                 blurRadius: 2,
//                 offset: const Offset(0, 1),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text('${item.product?.title}'),
//                   const SizedBox(height: 4),
//                   Text('Quantity: ${quantity.toInt()}'),
//                 ],
//               )
//             ],
//           ),
//         );
//       },
//       itemCount: widget.selectedItems.length,
//     );
//   }

//   Consumer _buildOrderPlaceButton() {
//     return Consumer(builder: (context, ref, child) {
//       return AppButton(
//         child: const Text("Place Order"),
//         onPressed: () async {
//           final model = await sslcommerz.payNow();
//           //
//           //
//           if (model.status == "VALID" && model.bankTranId != null) {
//             final api = await ref.read(secureApiProvider.future);
//             final billingAddress = ref.read(billingAddressProvider).valueOrNull;
//             final deliveryAddress =
//                 ref.read(billingAddressProvider).valueOrNull;
//             final res = await api
//                 .createOrder(
//                   request: CreateOrderRequest(
//                     billingAddress: Address(
//                       city: billingAddress?.city,
//                       country: 'Bangladesh',
//                       state: billingAddress?.province,
//                       street: billingAddress?.address,
//                       zipcode: '1000',
//                     ),
//                     deliveryAddress: Address(
//                       city: deliveryAddress?.city,
//                       country: 'Bangladesh',
//                       state: deliveryAddress?.province,
//                       street: deliveryAddress?.address,
//                       zipcode: '1000',
//                     ),
//                     paymentMethod: 'ONLINE',
//                     orderItems: widget.selectedItems.map(
//                       (e) {
//                         return OrderItem(
//                           productId: e.productId,
//                           quantity: int.tryParse(e.quantity ?? '0') ?? 0,
//                         );
//                       },
//                     ).toList(),
//                   ),
//                 )
//                 .errorAsValue();

//             if (!context.mounted) return;
//             if (res is AsyncData) {
//               showSnackBar(context, 'Order Placed Successfully', Colors.green);
//             }
//             if (res is AsyncError) {
//               showSnackBar(context, res.error.toString(), Colors.redAccent);
//             }
//             ref.invalidate(shoppingCartProvider);
//           } else {
//             if (!context.mounted) return;
//             showSnackBar(context, 'Payment Failed', Colors.redAccent);
//           }
//         },
//       );
//     });
//   }

//   Consumer _buildDeliveryAddressView() {
//     return Consumer(
//       builder: (context, ref, child) {
//         final address = ref.watch(deliveryAddressProvider);
//         return Container(
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.2),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: const Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     address.valueOrNull?.fullName ?? "No name",
//                   ),
//                   InkWell(
//                     onTap: () {
//                       context.push(const ViewDeliveryAddressPage());
//                     },
//                     child: const Text(
//                       "Change",
//                       style: TextStyle(color: Colors.lightGreen),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               Text(
//                 '${address.valueOrNull?.address},'
//                 '\n ${address.valueOrNull?.city}, '
//                 '${address.valueOrNull?.province}',
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
