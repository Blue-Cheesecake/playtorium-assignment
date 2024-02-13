import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pages/cart/logic/input/input.dart';

class CartBadgeWD extends ConsumerWidget {
  const CartBadgeWD({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(cartInputStateProvider.select((value) => value.products));
    int itemCount = 0;
    products.forEach((key, value) {
      itemCount += value.quantity;
    });
    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(
        badgeColor: Colors.blue,
      ),
      badgeContent: Text(
        itemCount.toString(),
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
      child: const Icon(
        Icons.shopping_cart,
      ),
    );
  }
}
