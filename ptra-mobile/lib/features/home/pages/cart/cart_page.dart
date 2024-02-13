import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/data.dart';
import 'logic/logic.dart';
import 'widgets/widgets.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(calculationAPIStateProvider.notifier).calculate(
            products: ref.read(cartInputStateProvider.select((value) => value.products)),
            campaigns: ref.read(
              cartInputStateProvider.select((value) => value.campaigns),
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
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
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Summary'),
                          content: const TotalPriceTextWD(),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Ok'),
                            )
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Checkout')),
            )
          ],
        ),
      ),
    );
  }
}
