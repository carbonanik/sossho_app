import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/utils/show_snack_bar.dart';
import 'package:sossho_app/widgets/app_button.dart';

import '../providers/billing_address_provider.dart';
import 'edit_billing_address_page.dart';

class ViewBillingAddressPage extends StatefulWidget {
  const ViewBillingAddressPage({super.key});

  @override
  State<ViewBillingAddressPage> createState() => _ViewBillingAddressPageState();
}

class _ViewBillingAddressPageState extends State<ViewBillingAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Billing Address'),
      ),
      body: Consumer(builder: (context, ref, child) {
        final billingAddress = ref.watch(billingAddressProvider);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child:
                billingAddress.valueOrNull != null
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
                                billingAddress.valueOrNull?.fullName ?? "",
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
                                billingAddress.valueOrNull?.phone ?? "",
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
                                billingAddress.valueOrNull?.province ?? "",
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
                                billingAddress.valueOrNull?.city ?? "",
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
                                billingAddress.valueOrNull?.area ?? "",
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
                                billingAddress.valueOrNull?.address ?? "",
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
                                billingAddress.valueOrNull?.landmark ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )
                    : const Center(
                        child: Text("No billing address found"),
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
                  context.push(const EditBillingAddressPage());
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
