import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';
import '../utils/utils.dart';

class DiscountCardsWD extends ConsumerWidget {
  const DiscountCardsWD({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignDto = ref.watch(cartInputStateProvider.select((value) => value.campaigns));

    if (campaignDto.isEmpty) {
      return const Center(child: Text("\"There's no added discount\""));
    }

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: campaignDto.length,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      itemBuilder: (context, index) {
        final e = campaignDto[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: CommonDiscountCardWD(
            id: e.id,
            dtoIndex: index,
            title: e.title,
            discount: e.discount,
            discountType: e.discountType,
            onRemoved: (index) {
              ref.read(cartInputStateProvider.notifier).removeCampaignAt(index);
            },
            everyXPrice: e.everyXPrice,
            productCategory: e.productCategory,
          ),
        );
      },
    );
  }
}
