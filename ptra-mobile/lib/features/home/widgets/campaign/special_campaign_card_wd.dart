import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../pages/cart/data/data.dart';
import '../../pages/cart/logic/logic.dart';
import '../../pages/cart/utils/utils.dart';
import '../../utils/utils.dart';

class SpecialCampaignCardWD extends StatelessWidget {
  const SpecialCampaignCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => const _SpecialCampaignDialog());
      },
      child: const CommonCampaignCardWD(
        id: 5,
        title: 'Special Campaign',
      ),
    );
  }
}

class _SpecialCampaignDialog extends ConsumerStatefulWidget {
  const _SpecialCampaignDialog();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __SpecialCampaignDialogState();
}

class __SpecialCampaignDialogState extends ConsumerState<_SpecialCampaignDialog> {
  final _discountValueController = TextEditingController();
  final _everyXPriceValueController = TextEditingController();

  @override
  void dispose() {
    _discountValueController.dispose();
    _everyXPriceValueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(specialCampaignInputStateProvider);

    return AlertDialog(
      title: const Text('Enter Discount'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseTextFieldWD(
            suffix: const Text('฿'),
            controller: _discountValueController,
            hintText: '0.00',
            onChanged: (value) =>
                ref.read(specialCampaignInputStateProvider.notifier).updateDiscount(double.tryParse(value ?? '0')),
            onSubmitted: (value) =>
                ref.read(specialCampaignInputStateProvider.notifier).updateDiscount(double.tryParse(value ?? '0')),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('For every'),
              const SizedBox(width: 10),
              Flexible(
                child: BaseTextFieldWD(
                  controller: _everyXPriceValueController,
                  hintText: '0.00',
                  onChanged: (value) => ref
                      .read(specialCampaignInputStateProvider.notifier)
                      .updateEveryXPrice(double.tryParse(value ?? '0')),
                  onSubmitted: (value) => ref
                      .read(specialCampaignInputStateProvider.notifier)
                      .updateEveryXPrice(double.tryParse(value ?? '0')),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          if (inputState.errorText != null) const SizedBox(height: 20),
          if (inputState.errorText != null)
            Text(
              inputState.errorText.toString(),
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: inputState.isButtonEnabled
                ? () {
                    ref.read(cartInputStateProvider.notifier).addCampaign(
                          CampaignDto(
                            id: 5,
                            title: 'Special Campaign',
                            discount: ref.read(
                              specialCampaignInputStateProvider.select((value) => value.discount!),
                            ),
                            discountType: CampaignDiscountType.baht,
                            everyXPrice: ref.read(
                              specialCampaignInputStateProvider.select((value) => value.everyXPrice!),
                            ),
                          ),
                        );
                    Navigator.of(context).pop();
                  }
                : null,
            child: const Text('Ok')),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
