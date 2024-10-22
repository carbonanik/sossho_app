import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/all_reviews_page.dart';
import 'package:sossho_app/page/auth/login_page.dart';
import 'package:sossho_app/page/favorites_page.dart';
import 'package:sossho_app/page/home/blog_detail_page.dart';
import 'package:sossho_app/page/home/blog_list_page.dart';
import 'package:sossho_app/page/home/home_page.dart';
import 'package:sossho_app/page/home/main_tabs.dart';
import 'package:sossho_app/page/home/product_brand_page.dart';
import 'package:sossho_app/page/my_order_page.dart';
import 'package:sossho_app/page/home/search_filter_page.dart';
import 'package:sossho_app/page/home/search_list_page.dart';
import 'package:sossho_app/page/home/seller_home_page.dart';
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
        title: 'Sossho',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: accentColor,
            primary: accentColor,
          ),
          useMaterial3: true,
        ),
        home: const MainTabs(),
      ),
    );
  }
}

/// SL    Feature Name
//     User sign-up page 👌✅🔌✅🧪❌
//     User sign in page 👌✅🔌✅
//     User forgot password page 👌✅🔌❌
//     User OTP verify page  👌✅🔌❌
//     User reset password page  👌✅🔌❌
//     User email verify page  👌✅🔌❌
//     1  - 6 auth flow page list

//     Home page design 👌✅🔌✅
//     Product search page 👌✅🔌❌
//     Product detail page 👌✅🔌✅
//     Product category page 👌✅🔌✅
//     Product brand page
//     Product type page
//     Product hot deal page
//     8  - 14 product page list

//     User profile update page 👌✅🔌✅
//     User change password page 👌✅🔌❌
//     User add cart list page 👌✅🔌✅
//     User order list page 👌✅🔌❌
//     User transaction history list page 👌✅🔌❌
//     User review add page 👌✅🔌❌
//     User billing address add and update page 👌✅🔌✅
//     User delivery address add and update page 👌✅🔌✅
//     16  - 26 user account page list

//     About us page
//     contact us page
//     Terms and condition page
//     Privacy policy page
//     FAQ page
//     Public layout
//     User Profile layout
//     Blog list page
//     Blog category page
//     Blog detail page
