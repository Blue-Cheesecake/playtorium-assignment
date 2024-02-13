import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../pages/cart/data/data.dart';
import '../../pages/cart/logic/logic.dart';
import '../../pages/cart/utils/utils.dart';
import '../../utils/utils.dart';

class FixedAmountCampaignCardWD extends StatelessWidget {
  const FixedAmountCampaignCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => const _FixedamountDialog());
      },
      child: const CommonCampaignCardWD(
        id: 1,
        title: 'Fixed Amount Discount',
      ),
    );
  }
}

class _FixedamountDialog extends ConsumerStatefulWidget {
  const _FixedamountDialog();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __FixedamountDialogState();
}

class __FixedamountDialogState extends ConsumerState<_FixedamountDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(fixedAmountCampaignInputStateProvider);

    return AlertDialog(
      title: const Text('Enter Discount'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseTextFieldWD(
            suffix: const Text('฿'),
            controller: _controller,
            hintText: '0.00',
            onChanged: (value) =>
                ref.read(fixedAmountCampaignInputStateProvider.notifier).updateDiscount(double.tryParse(value ?? '0')),
            onSubmitted: (value) =>
                ref.read(fixedAmountCampaignInputStateProvider.notifier).updateDiscount(double.tryParse(value ?? '0')),
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
                            id: 1,
                            title: 'Fixed Amount',
                            discount: ref.read(
                              fixedAmountCampaignInputStateProvider.select((value) => value.discount!),
                            ),
                            discountType: CampaignDiscountType.baht,
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
