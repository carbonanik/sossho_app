import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/all_reviews_page.dart';
import 'package:sossho_app/page/auth/login_page.dart';
import 'package:sossho_app/page/favorites_page.dart';
import 'package:sossho_app/page/home_page.dart';
import 'package:sossho_app/page/main_tabs.dart';
import 'package:sossho_app/page/my_order_page.dart';
import 'package:sossho_app/page/search_filter_page.dart';
import 'package:sossho_app/page/search_list_page.dart';
import 'package:sossho_app/page/seller_home_page.dart';
import 'package:sossho_app/page/ssl_com_test.dart';
import 'package:sossho_app/providers/login_provider.dart';
import 'package:sossho_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: accentColor,
            primary: accentColor,
          ),
          useMaterial3: true,
        ),
        home: const SellerHomePage(),
      ),
    );
  }
}
