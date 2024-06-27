import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/model/update_billing_address.request.dart';
import 'package:sossho_app/providers/delivery_address_provider.dart';
import 'package:sossho_app/utils/error_as_value.dart';
import 'package:sossho_app/utils/validator.dart';

import '../utils/show_snack_bar.dart';
import '../widgets/add_text_field.dart';
import '../widgets/app_button.dart';

class EditDeliveryAddressPage extends ConsumerStatefulWidget {
  const EditDeliveryAddressPage({super.key});

  @override
  ConsumerState<EditDeliveryAddressPage> createState() =>
      _EditDeliveryAddressPageState();
}

class _EditDeliveryAddressPageState
    extends ConsumerState<EditDeliveryAddressPage> {
  final formKey = GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _provinceController = TextEditingController();
  final _cityController = TextEditingController();
  final _areaController = TextEditingController();
  final _addressController = TextEditingController();
  final _landmarkController = TextEditingController();

  String id = '';

  bool loading = false;

  @override
  void dispose() {
    _fullNameController.dispose();

    _phoneController.dispose();
    _provinceController.dispose();
    _cityController.dispose();
    _areaController.dispose();
    _addressController.dispose();
    _landmarkController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(deliveryAddressProvider.future).errorAsValue().then((value) {
        _fullNameController.text = value.value?.fullName ?? "";
        _phoneController.text = value.value?.phone ?? "";
        _provinceController.text = value.value?.province ?? "";
        _cityController.text = value.value?.city ?? "";
        _areaController.text = value.value?.area ?? "";
        _addressController.text = value.value?.address ?? "";
        _landmarkController.text = value.value?.landmark ?? "";

        id = value.value?.id ?? "";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 50.0),
                AppTextField(
                  hintText: 'Full Name',
                  prefixIcon: Icons.person,
                  controller: _fullNameController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                AppTextField(
                  hintText: 'Phone Number',
                  prefixIcon: Icons.phone,
                  controller: _phoneController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                AppTextField(
                  hintText: 'Province',
                  prefixIcon: Icons.location_on,
                  controller: _provinceController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                AppTextField(
                  hintText: 'City',
                  prefixIcon: Icons.location_on,
                  controller: _cityController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                AppTextField(
                  hintText: 'Area',
                  prefixIcon: Icons.location_on,
                  controller: _areaController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                AppTextField(
                  hintText: 'Address',
                  prefixIcon: Icons.location_on,
                  controller: _addressController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                AppTextField(
                  hintText: 'Landmark',
                  prefixIcon: Icons.location_on,
                  controller: _landmarkController,
                  fillColor: Colors.grey.shade200,
                  validator: Validator.required,
                ),
                const SizedBox(height: 16.0),
                const SizedBox(height: 50.0),
                Consumer(builder: (context, ref, child) {
                  final deliveryAddress = ref.watch(deliveryAddressProvider);
                  return deliveryAddress.valueOrNull == null
                      ? Container()
                      : AppButton(
                          backgroundColor: Colors.red,
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.delete),
                              SizedBox(width: 10),
                              Text("Delete"),
                            ],
                          ),
                          onPressed: () async {
                            if (deliveryAddress.valueOrNull == null) {
                              return;
                            }
                            final res = await ref
                                .read(deliveryAddressProvider.notifier)
                                .deleteDeliveryAddress(
                                    addressId: deliveryAddress.valueOrNull!.id!);
                            if (res is AsyncData && context.mounted) {
                              showSnackBar(context,
                                  'Delivery address deleted successfully');
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            }
                            if (res is AsyncError && context.mounted) {
                              showSnackBar(
                                  context,
                                  (res.error as DioException)
                                      .response
                                      .toString());
                            }
                          },
                        );
                }),
                const SizedBox(height: 12),
                AppButton(
                  onPressed: () async {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }
                    if (loading) {
                      return;
                    }
                    setState(() {
                      loading = true;
                    });
                    AsyncValue res;
                    if (id.isEmpty) {
                      res = await ref
                          .read(deliveryAddressProvider.notifier)
                          .createDeliveryAddress(
                            request: UpdateBillingAddressRequest(
                              fullName: _fullNameController.text,
                              phone: _phoneController.text,
                              province: _provinceController.text,
                              city: _cityController.text,
                              area: _areaController.text,
                              address: _addressController.text,
                              landmark: _landmarkController.text,
                            ),
                          )
                          .errorAsValue();
                    } else {
                      res = await ref
                          .read(deliveryAddressProvider.notifier)
                          .updateDeliveryAddress(
                            addressId: id,
                            request: UpdateBillingAddressRequest(
                              fullName: _fullNameController.text,
                              phone: _phoneController.text,
                              province: _provinceController.text,
                              city: _cityController.text,
                              area: _areaController.text,
                              address: _addressController.text,
                              landmark: _landmarkController.text,
                            ),
                          )
                          .errorAsValue();
                    }

                    setState(() {
                      loading = false;
                    });

                    if (res.hasError) {
                      if (context.mounted) {
                        showSnackBar(
                            context, res.error.toString(), Colors.redAccent);
                      }
                    } else {
                      if (context.mounted) {
                        showSnackBar(
                            context, 'Delivery Address Saved', Colors.green);
                      }
                    }
                  },
                  child: Text(loading ? 'Saving...' : 'Save Changes'),
                ),
                const SizedBox(height: 22.0),
                const SizedBox(height: 22.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
