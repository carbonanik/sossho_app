import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SearchFilterPage extends StatefulWidget {
  const SearchFilterPage({super.key});

  @override
  State<SearchFilterPage> createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
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
        title: const Text('Filter'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SingleChildScrollView(
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
                      color:
                          i == _selectedIndex ? accentColor : Colors.grey[300],
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
            values: const RangeValues(20, 80),
            onChanged: (value) {},
            divisions: 10,
            min: 0,
            max: 100,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Reviews',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          for (int i = 0; i < 5; i++)
            Row(
              children: [
                const SizedBox(width: 16),
                for (int j = 0; j < 5; j++)
                  Icon(
                    Icons.star,
                    color: i < j ? Colors.grey : Colors.amberAccent,
                  ),
                const SizedBox(width: 16),
                Text(
                  '(${i + 1})',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Sort By',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
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
                      color:
                          i == _selectedIndex ? accentColor : Colors.grey[300],
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
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Brand',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
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
                      color:
                          i == _selectedIndex ? accentColor : Colors.grey[300],
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
        ],
      ),
    );
  }
}
