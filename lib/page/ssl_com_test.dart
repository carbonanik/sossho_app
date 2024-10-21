import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCCustomerInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCShipmentInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/General.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/SSLCProductInitializer.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';

class SslComTest extends StatefulWidget {
  const SslComTest({super.key});

  @override
  State<SslComTest> createState() => _SslComTestState();
}

class _SslComTestState extends State<SslComTest> {
  late final Sslcommerz sslcommerz;

  @override
  void initState() {
    sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        // ipn_url: "www.ipnurl.com",
        multi_card_name: "visa,master,bkash",
        currency: SSLCurrencyType.BDT,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "codek668244863e9c8",
        store_passwd: "codek668244863e9c8@ssl",
        total_amount: 10,
        tran_id: "custom_transaction_id",
      ),
    );

    sslcommerz.addCustomerInfoInitializer(
      customerInfoInitializer: SSLCCustomerInfoInitializer(
        customerState: "Chattogram",
        customerName: "Abu Sayed Chowdhury",
        customerEmail: "sayem227@gmail.com",
        customerAddress1: "Chattogram",
        customerCity: "Chattogram",
        customerPostCode: "200",
        customerCountry: "Bangladesh",
        customerPhone: '01812345678',
      ),
    );

    sslcommerz.addProductInitializer(
      sslcProductInitializer: SSLCProductInitializer(
        productName: "Water Filter",
        productCategory: "Widgets",
        general: General(
          general: "General Purpose",
          productProfile: "Product Profile",
        ),
      ),
    );

    sslcommerz.addShipmentInfoInitializer(
      sslcShipmentInfoInitializer: SSLCShipmentInfoInitializer(
        shipmentMethod: "yes",
        numOfItems: 5,
        shipmentDetails: ShipmentDetails(
          shipAddress1: "Ship address 1",
          shipCity: "Faridpur",
          shipCountry: "Bangladesh",
          shipName: "Ship name 1",
          shipPostCode: "7860",
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSL Com Test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final model = await sslcommerz.payNow();
            print(model.toJson().toString());
          },
          child: const Text('SSL Com Test'),
        ),
      ),
    );
  }
}
