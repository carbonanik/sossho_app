import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/product.dart';
import '../../model/public_product_response.dart';
import '../../providers/public_product_provider.dart';
import '../../widgets/product_grid_item.dart';

class SearchListPage extends StatelessWidget {
  const SearchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          Consumer(builder: (context, ref, child) {
            final products = ref.watch(publicProductProviderProvider);

            print(products);

            // return const SliverToBoxAdapter(
            //   child: Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // );

            return SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Text(
                      'Search Of "Shoes"',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${products.value?.products?.length ?? 0} Results Found',
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          Consumer(builder: (context, ref, child) {
            final products = ref.watch(publicProductProviderProvider);

            print(products);

            // return const SliverToBoxAdapter(
            //   child: Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // );

            return SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1,
                ),
                itemCount: products.value?.products?.length ?? 0,
                itemBuilder: (context, index) {
                  final product = products.value?.products![index];
                  return ProductGridItem(
                    product: product!,
                    onTap: (product) {},
                  );
                },
              ),
            );
          }),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}
