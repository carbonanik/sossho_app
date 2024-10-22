import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sossho_app/model/get_cart_response.dart';

import '../utils/colors.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    super.key,
    required this.item,
    required this.onAdd,
    required this.onRemove,
    required this.onDelete,
    required this.selected,
    required this.onSelect,
  });

  final Cart item;
  final Function(String productId) onAdd;
  final Function(String productId) onRemove;
  final Function(String cartId) onDelete;
  final bool selected;
  final void Function(bool? value) onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 0,
        right: 10,
      ),
      // margin: EdgeInsets.only(bottom: (10)),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular((6)),
      ),
      child: Row(
        children: [
          //checkbox
          Checkbox(
            value: selected,
            onChanged: onSelect,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular((6)),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
            //  item.product?.images?.firstOrNull ?? '',
              jsonDecode(item.product!.images)?[0]?["image_path"] ?? "",
              height: (50),
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image);
              },
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.product?.title ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () => onDelete(item.id ?? ''),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(Icons.delete),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(
                        '${double.parse(item.product?.price ?? '0') * int.parse(item.quantity ?? '0')} BDT',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              onAdd(item.product?.id ?? '');
                            },
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(width: 10),
                          Text(item.quantity.toString()),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () => onRemove(item.product?.id ?? ''),
                            child: const Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
