import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/data.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsMap = ref.watch(cartInputStateProvider.select((value) => value.products));
    final products = <CartInputInfoModel>[];
    productsMap.forEach((_, v) {
      products.add(v);
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: productsMap.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: CartItemWD(info: products[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
