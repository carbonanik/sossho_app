import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/cart_page.dart';
import 'package:sossho_app/page/favorites_page.dart';
import 'package:sossho_app/page/home/blog_list_page.dart';
import 'package:sossho_app/page/home/home_page.dart';
import 'package:sossho_app/page/my_order_page.dart';

import 'package:sossho_app/page/home/product_detail_page.dart';
import 'package:sossho_app/page/profile/profile_page.dart';
import 'package:sossho_app/providers/categories_provider.dart';
import 'package:sossho_app/utils/navigation.dart';

import '../../providers/public_product_provider.dart';
import '../../utils/colors.dart';
import '../../widgets/product_grid_item.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({super.key});

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  List<String> featuredImages = [
    'https://res.cloudinary.com/carbon-dev/image/upload/v1658207526/samples/food/spices.jpg',
    'https://res.cloudinary.com/carbon-dev/image/upload/v1658207539/cld-sample-4.jpg',
    'https://res.cloudinary.com/carbon-dev/image/upload/v1658207516/samples/food/dessert.jpg',
    'https://res.cloudinary.com/carbon-dev/image/upload/v1658207518/samples/food/pot-mussels.jpg',
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BlogListPage(),
    MyCartPage(),
    MyOrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.push(const MyCartPage());
      //   },
      //   child: const Icon(Icons.shopping_bag),
      // ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
