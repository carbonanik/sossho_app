import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/cart_page.dart';

import 'package:sossho_app/page/product_detail_page.dart';
import 'package:sossho_app/page/profile_page.dart';
import 'package:sossho_app/utils/navigation.dart';

import '../providers/public_product_provider.dart';
import '../utils/colors.dart';
import '../widgets/product_grid_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    List<String> featuredImages = [
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207526/samples/food/spices.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207539/cld-sample-4.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207516/samples/food/dessert.jpg',
      'https://res.cloudinary.com/carbon-dev/image/upload/v1658207518/samples/food/pot-mussels.jpg',
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(const MyCartPage());
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        color: backgroundColor,
        child: CustomScrollView(
          // physics: const BouncingScrollPhysics(),
          slivers: [
            /// top selector
            _buildHeader(context),
            // _sliverSpace(context: context),
            // _buildSearchBox(context),
            _sliverSpace(context: context),

            _buildImageGallery(context, featuredImages),
            _sliverSpace(context: context, height: 40),

            /// Category Text
            _buildSectionHeader(context, 'Category'),

            /// category list
            _buildCategoryList(context),
            _sliverSpace(context: context),

            /// popular text
            _buildSectionHeader(context, 'Products'),

            /// popular list
            _buildProductGrid(context),
            _sliverSpace(context: context)
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildCategoryList(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: (20)),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.horizontal,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: .4,
          children: List.generate(
            10,
            (index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Category Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildSearchBox(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: (20)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular((12)),
        ),
        child: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Search',
              prefixIcon: const Icon(
                Icons.search,
                color: accentColor,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1.0, color: Colors.green)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(width: 1.0, color: Colors.white)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildImageGallery(
      BuildContext context, List<String> featuredImages) {
    return SliverToBoxAdapter(
      child: Container(
        height: (150),
        width: (300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular((12)),
        ),
        child: PageView.builder(
            itemCount: featuredImages.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: (10)),
                margin: const EdgeInsets.symmetric(horizontal: (20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: index.isOdd
                      ? Colors.lightGreen.shade200
                      : Colors.green.shade200,
                  image: DecorationImage(
                    image: NetworkImage(featuredImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 36),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.push(const ProfilePage());
                  },
                  customBorder: const CircleBorder(),
                  child: const CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Location',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              size: 20, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            'Uttara, Dhaka',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Icon(Icons.arrow_drop_down,
                              size: 20, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.notifications,
                      size: 30,
                      color: accentColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((12)),
              ),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: accentColor,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                        borderSide:
                            const BorderSide(width: 1.0, color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((10)),
                        borderSide:
                            const BorderSide(width: 1.0, color: Colors.white)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular((20)),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _sliverSpace(
      {required BuildContext context, double height = 30}) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: (height),
      ),
    );
  }

  SliverToBoxAdapter _buildSectionHeader(BuildContext context, String text) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: (20)),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular((12)),
        // color: Colors.green,
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: (20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final products = ref.watch(publicProductProviderProvider);
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: (20)),
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
}

class CustomSilverHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  CustomSilverHeaderDelegate(this.minExtent, this.maxExtent);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/delivery_man.png',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black45],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.5, 1.0],
            ),
          ),
        ),
        Positioned(
            left: (16),
            right: (16),
            bottom: (16),
            child: Text(
              'Lorem ipsome',
              style: TextStyle(
                fontSize: (32),
                color: Colors.white.withOpacity(
                  titleOpacity(shrinkOffset),
                ),
              ),
            ))
      ],
    );
  }

  double titleOpacity(double shrinkOffset) {
    return 1 - max(0.0, shrinkOffset) / maxExtent;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
