import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sossho_app/page/home/search_list_page.dart';
import 'package:sossho_app/providers/api_provider.dart';
import 'package:sossho_app/providers/public_product_provider.dart';
import 'package:sossho_app/utils/navigation.dart';
import 'package:sossho_app/widgets/app_button.dart';

import '../../model/get_categories_public_response.dart';
import '../../model/get_product_brand_public_response.dart';
import '../../utils/colors.dart';

class SearchFilterPage extends ConsumerStatefulWidget {
  const SearchFilterPage({super.key});

  @override
  ConsumerState<SearchFilterPage> createState() => _SearchFilterPageState();
}

const double priceSliderMinValue = 0;
const double priceSliderMaxValue = 10000;

class _SearchFilterPageState extends ConsumerState<SearchFilterPage> {
  int _selectedCategoryIndex = 0;
  int _selectedBrandIndex = 0;

  //
  RangeValues _priceSliderValues =
      const RangeValues(priceSliderMinValue, priceSliderMaxValue);

  List<Category> categories = [];
  List<ProductBrand> brands = [];

  @override
  void initState() {
    ref.read(publicApiProvider).getCategories().then(
      (value) {
        categories = value;
        if (mounted) setState(() {});
      },
    );
    ref.read(publicApiProvider).getProductBrands().then(
      (value) {
        brands = value;
        if (mounted) setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 20),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 16.0),
                  //   child: Text(
                  //     'Category',
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 20),
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       const SizedBox(width: 16),
                  //       for (int i = 0; i < 9; i++)
                  //         Container(
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 16.0,
                  //             vertical: 8.0,
                  //           ),
                  //           margin: const EdgeInsets.only(right: 8.0),
                  //           decoration: BoxDecoration(
                  //             borderRadius: BorderRadius.circular(20),
                  //             color: i == _selectedIndex
                  //                 ? accentColor
                  //                 : Colors.grey[300],
                  //           ),
                  //           child: Text(
                  //             _category[i],
                  //             style: TextStyle(
                  //               color: i == _selectedIndex
                  //                   ? Colors.white
                  //                   : Colors.grey[900],
                  //               fontSize: 14,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ),
                  //       const SizedBox(width: 16),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Price Range',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RangeSlider(
                    values: _priceSliderValues,
                    min: priceSliderMinValue,
                    max: priceSliderMaxValue,
                    divisions: (priceSliderMaxValue - priceSliderMinValue) ~/ 2,
                    labels: RangeLabels(
                      "৳ ${_priceSliderValues.start.toInt()}",
                      "৳ ${_priceSliderValues.end.toInt()}",
                    ),
                    inactiveColor: Colors.grey.shade400,
                    onChanged: (value) {
                      setState(() {
                        _priceSliderValues = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text("৳ ${_priceSliderValues.start.toInt()}"),
                        const Spacer(),
                        Text("৳ ${_priceSliderValues.end.toInt()}"),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 20),

                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 16.0),
                  //   child: Text(
                  //     'Reviews',
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 20),
                  // for (int i = 0; i < 5; i++)
                  //   Row(
                  //     children: [
                  //       const SizedBox(width: 16),
                  //       for (int j = 0; j < 5; j++)
                  //         Icon(
                  //           Icons.star,
                  //           color: i < j ? Colors.grey : Colors.amberAccent,
                  //         ),
                  //       const SizedBox(width: 16),
                  //       Text(
                  //         '(${i + 1})',
                  //         style: const TextStyle(
                  //           fontSize: 14,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //       ),
                  //       const SizedBox(width: 16),
                  //     ],
                  //   ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildCategoriesList(),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Brand Category',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildProductsBrands(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppButton(
              child: Text('Search'),
              onPressed: () {
                ref
                    .read(getProductRequestParamsProviderProvider.notifier)
                    .update(
                  (value) {
                    return value.copyWith(
                      category: categories[_selectedCategoryIndex].title,
                      brand: brands[_selectedBrandIndex].title,
                      minPrice: _priceSliderValues.start.toString(),
                      maxPrice: _priceSliderValues.end.toString(),
                    );
                  },
                );
                context.push(const SearchListPage());
              },
            ),
          )
        ],
      ),
    );
  }

  Consumer _buildProductsBrands() {
    return Consumer(
      builder: (context, ref, child) {
        return Wrap(
          children: [
            ...List.generate(
              brands.length,
              (index) {
                return _buildProductBrandItem(index);
              },
            )
          ],
        );
      },
    );
  }

  GestureDetector _buildProductBrandItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedBrandIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        margin: const EdgeInsets.only(left: 16, bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: index == _selectedBrandIndex ? accentColor : Colors.grey[300],
        ),
        child: Text(
          brands[index].title ?? '',
          style: TextStyle(
            color:
                index == _selectedBrandIndex ? Colors.white : Colors.grey[900],
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Consumer _buildCategoriesList() {
    return Consumer(
      builder: (context, ref, child) {
        return Wrap(
          runSpacing: 10,
          children: [
            ...List.generate(
              categories.length,
              (index) {
                return _buildCategoryItem(index);
              },
            )
          ],
        );
      },
    );
  }

  GestureDetector _buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategoryIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        margin: const EdgeInsets.only(left: 16, bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              index == _selectedCategoryIndex ? accentColor : Colors.grey[300],
        ),
        child: Text(
          categories[index].title ?? '',
          style: TextStyle(
            color: index == _selectedCategoryIndex
                ? Colors.white
                : Colors.grey[900],
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
