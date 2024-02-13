import 'package:flutter/material.dart';

import '../utils.dart';

class CommonDiscountCardWD extends StatelessWidget {
  const CommonDiscountCardWD({
    required this.id,
    required this.dtoIndex,
    required this.title,
    required this.discount,
    required this.onRemoved,
    this.isPercentage = false,
    this.productCategory,
    super.key,
    this.everyXPrice,
  });

  final int id;
  final int dtoIndex;
  final String title;
  final double discount;
  final bool isPercentage;
  final String? productCategory;
  final double? everyXPrice;
  final void Function(int index) onRemoved;

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.blue, Colors.amber, Colors.red];
    int colorIndex = 0;
    if (id <= 2) {
      colorIndex = 0;
    } else if (id > 2 && id <= 4) {
      colorIndex = 1;
    } else {
      colorIndex = 2;
    }

    String discountText = 'Discount: $discount';
    if (isPercentage) {
      discountText += '%';
    } else {
      discountText += '฿';
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4)],
        color: colors[colorIndex].withOpacity(0.2),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 180,
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                discountText,
                style: const TextStyle(fontSize: 12),
                overflow: TextOverflow.fade,
              ),
              if (productCategory != null)
                Text(
                  'Category: $productCategory',
                  style: const TextStyle(fontSize: 12),
                ),
              if (everyXPrice != null)
                Text(
                  'For every: $everyXPrice baht',
                  style: const TextStyle(fontSize: 12),
                ),
            ],
          ),
          IconButton(
            onPressed: () {
              onRemoved(dtoIndex);
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
    );
  }
}
