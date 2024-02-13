import 'package:flutter/material.dart';

class CommonDiscountCardWD extends StatelessWidget {
  const CommonDiscountCardWD({
    required this.id,
    required this.dtoIndex,
    required this.title,
    required this.discount,
    required this.onRemoved,
    super.key,
    this.child,
  });

  final int id;
  final int dtoIndex;
  final String title;
  final double discount;
  final Widget? child;
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
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Discount: $discount฿',
                style: const TextStyle(fontSize: 12),
              ),
              if (child != null) const SizedBox(height: 15),
              if (child != null) child!,
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
