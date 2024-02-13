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
        itemBuilder: (context, index) {
          final e = campaignDto[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CommonDiscountCardWD(
              id: e.id,
              dtoIndex: index,
              title: e.title,
              discount: e.discount,
              onRemoved: (index) {
                ref.read(cartInputStateProvider.notifier).removeCampaignAt(index);
              },
            ),
          );
        });
  }
}
