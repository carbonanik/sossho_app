import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sossho_app/page/order_details_page.dart';
import 'package:sossho_app/utils/navigation.dart';

import '../utils/colors.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage>
    with TickerProviderStateMixin {
  final List<String> tabs = [
    'All',
    'Active',
    'Completed',
    'Cancelled',
  ];

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        bottom: TabBar(
          controller: _tabController,
          onTap: (value) {
            setState(() {});
          },
          tabs: [
            for (var tab in tabs)
              Tab(
                text: tab,
              ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          // product
          String _tab = tabs[_tabController.index];
          //
          if (_tab == 'All') {
            _tab = ['Active', 'Completed', 'Cancelled'][Random().nextInt(3)];
          }
          // color
          final _color1 = {
            'Active': Colors.green.shade50,
            'Completed': Colors.blue.shade50,
            'Cancelled': Colors.red.shade50,
          }[_tab];
          //
          final _color2 = {
            'Active': Colors.green,
            'Completed': Colors.blue,
            'Cancelled': Colors.red,
          }[_tab];
          //
          return GestureDetector(
            onTap: () {
              context.push(OrderDetailsPage());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  // product image
                  Container(
                    height: 80,
                    width: 80,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1999&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  // product info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$_tab Product',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Quantity: 1'),
                        const Text('Price: \$100'),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: _color1,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      _tab,
                      style: TextStyle(
                        color: _color2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
