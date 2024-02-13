import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data.dart';
import '../logic/logic.dart';

class CartItemWD extends ConsumerWidget {
  const CartItemWD({required this.info, super.key});

  final CartInputInfoModel info;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 4)],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            child: Image.network(
              info.data.imageURL,
              width: 210,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Text(info.data.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text('Price: ${info.data.price}฿', style: const TextStyle(fontSize: 13)),
              const SizedBox(height: 15),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      final state = ref.read(cartInputStateProvider);
                      ref.read(cartInputStateProvider.notifier).removeProduct(info.data);
                      ref.read(calculationAPIStateProvider.notifier).calculate(
                            products: state.products,
                            campaigns: state.campaigns,
                          );
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  Text(
                    info.quantity.toString(),
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {
                      final state = ref.read(cartInputStateProvider);
                      ref.read(cartInputStateProvider.notifier).addProduct(info.data);
                      ref.read(calculationAPIStateProvider.notifier).calculate(
                            products: state.products,
                            campaigns: state.campaigns,
                          );
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
