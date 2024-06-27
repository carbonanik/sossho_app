import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/providers/delivery_address_provider.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/app_button.dart';

import 'edit_delivery_address_page.dart';


class ViewDeliveryAddressPage extends StatefulWidget {
  const ViewDeliveryAddressPage({super.key});

  @override
  State<ViewDeliveryAddressPage> createState() => _ViewDeliveryAddressPageState();
}

class _ViewDeliveryAddressPageState extends State<ViewDeliveryAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Address'),
      ),
      body: Consumer(builder: (context, ref, child) {
        final deliveryAddress = ref.watch(deliveryAddressProvider);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child:
                deliveryAddress.valueOrNull != null
                    ?
                Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Full Name: ",
                                style: TextStyle(color: Colors.grey.shade700),
                              ),
                              Text(
                                deliveryAddress.valueOrNull?.fullName ?? "",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text("Phone: ",
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                              Text(
                                deliveryAddress.valueOrNull?.phone ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text("Province: ",
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                              Text(
                                deliveryAddress.valueOrNull?.province ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "City: ",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              Text(
                                deliveryAddress.valueOrNull?.city ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text("Area: ",
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                              Text(
                                deliveryAddress.valueOrNull?.area ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Address: ",
                                style: TextStyle(color: Colors.grey.shade700),
                              ),
                              Text(
                                deliveryAddress.valueOrNull?.address ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text("Landmark: ",
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                              Text(
                                deliveryAddress.valueOrNull?.landmark ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )
                    : const Center(
                        child: Text("No delivery address found"),
                      ),
              ),

              AppButton(
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.edit),
                    SizedBox(width: 10),
                    Text("Edit"),
                  ],
                ),
                onPressed: () {
                  context.push(const EditDeliveryAddressPage());
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      }),
    );
  }
}
