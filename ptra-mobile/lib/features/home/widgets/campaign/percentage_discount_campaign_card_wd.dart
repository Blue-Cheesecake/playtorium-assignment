import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../pages/cart/data/data.dart';
import '../../pages/cart/logic/logic.dart';
import '../../pages/cart/utils/utils.dart';
import '../../utils/utils.dart';

class PercentageDiscountCampaignCardWD extends StatelessWidget {
  const PercentageDiscountCampaignCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => const _PercentageDiscountDialog());
      },
      child: const CommonCampaignCardWD(
        id: 2,
        title: 'Percentage Discount',
      ),
    );
  }
}

class _PercentageDiscountDialog extends ConsumerStatefulWidget {
  const _PercentageDiscountDialog();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __PercentageDiscountDialogState();
}

class __PercentageDiscountDialogState extends ConsumerState<_PercentageDiscountDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(percentageDiscountCampaignInputStateProvider);

    return AlertDialog(
      title: const Text('Enter Percentage Discount'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseTextFieldWD(
            suffix: const Text('%'),
            controller: _controller,
            hintText: '0.0',
            onChanged: (value) => ref
                .read(percentageDiscountCampaignInputStateProvider.notifier)
                .updateDiscount(double.tryParse(value ?? '0')),
            onSubmitted: (value) => ref
                .read(percentageDiscountCampaignInputStateProvider.notifier)
                .updateDiscount(double.tryParse(value ?? '0')),
            keyboardType: TextInputType.number,
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
                            id: 2,
                            title: 'Percentage Discount',
                            discount: ref.read(
                              percentageDiscountCampaignInputStateProvider.select((value) => value.discount!),
                            ),
                            discountType: CampaignDiscountType.percentage,
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
