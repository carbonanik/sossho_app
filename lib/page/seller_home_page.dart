import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/product_detail_page.dart';
import 'package:sossho_app/utils/navigation.dart';

import '../providers/public_product_provider.dart';
import '../widgets/product_grid_item.dart';
import 'all_reviews_page.dart';

class SellerHomePage extends StatefulWidget {
  const SellerHomePage({super.key});

  @override
  State<SellerHomePage> createState() => _SellerHomePageState();
}

class _SellerHomePageState extends State<SellerHomePage>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
      ),
      body: Column(
        children: [
          _buildProfile(),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Products'),
              Tab(text: 'Reviews'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Text(
                              'Latest',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                    _buildProductGrid(context),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Text(
                              'All Products',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                    _buildProductGrid(context),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '4.5',
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                  ],
                                ),
                                const Text('107 Reviews'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                            child: VerticalDivider(),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                for (int i = 5; i > 0; i--)
                                  Row(
                                    children: [
                                      Text(i.toString()),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 6,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.grey.shade300,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  flex: i,
                                                  child: Container(
                                                    height: 6,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 5 - i,
                                                  child: const SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                    ],
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => const ReviewCard(),
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final products = ref.watch(publicProductProviderProvider);
      print(products.valueOrNull?.products?.length);
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        sliver: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
          ),
          itemCount: products.valueOrNull?.products?.length ?? 0,
          itemBuilder: (context, index) {
            return ProductGridItem(
              product: products.value!.products![index],
              onTap: (product) {
                context.push(ProductDetailPage(product: product));
              },
            );
          },
        ),
      );
    });
  }

  Widget _buildProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
            radius: 40,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Seller Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Seller Email',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent[100],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Best Sellers',
                  style: TextStyle(
                    color: Colors.greenAccent[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
