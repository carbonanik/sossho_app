import 'package:flutter/material.dart';
import 'package:sossho_app/model/public_product_response.dart';
import 'package:sossho_app/utils/colors.dart';

import '../widgets/product_grid_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final _category = [
    'All',
    'Shoes',
    'Clothes',
    'Accessories',
    'Electronics',
    'Furniture',
    'Sports',
    'Books',
    'Beauty',
  ];

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  for (int i = 0; i < 9; i++)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      margin: const EdgeInsets.only(right: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: i == _selectedIndex
                            ? accentColor
                            : Colors.grey[300],
                      ),
                      child: Text(
                        _category[i],
                        style: TextStyle(
                          color: i == _selectedIndex
                              ? Colors.white
                              : Colors.grey[900],
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return ProductGridItem(
                  product: Product(
                    title: 'Product $index',
                    images: ['https://picsum.photos/200/300?random=$index'],
                    price: '$index.99',
                  ),
                  onTap: (product) {},
                );
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}
