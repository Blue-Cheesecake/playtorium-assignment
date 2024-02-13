import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../pages/cart/data/data.dart';
import '../../pages/cart/logic/logic.dart';
import '../../pages/cart/utils/utils.dart';
import '../../utils/utils.dart';

class DiscountByPointsCampaignCardWD extends StatelessWidget {
  const DiscountByPointsCampaignCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => const _DiscountByPointsDialog());
      },
      child: const CommonCampaignCardWD(
        id: 4,
        title: 'Discount by Points',
      ),
    );
  }
}

class _DiscountByPointsDialog extends ConsumerStatefulWidget {
  const _DiscountByPointsDialog();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __DiscountByPointsDialogState();
}

class __DiscountByPointsDialogState extends ConsumerState<_DiscountByPointsDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(discountByPointsCampaignInputStateProvider);

    return AlertDialog(
      title: const Text('Enter Discount Points'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseTextFieldWD(
            suffix: const Text('P'),
            controller: _controller,
            hintText: '0.00',
            onChanged: (value) => ref
                .read(discountByPointsCampaignInputStateProvider.notifier)
                .updateDiscount(double.tryParse(value ?? '0')),
            onSubmitted: (value) => ref
                .read(discountByPointsCampaignInputStateProvider.notifier)
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
                            id: 4,
                            title: 'Discount by Points',
                            discount: ref.read(
                              discountByPointsCampaignInputStateProvider.select((value) => value.discount!),
                            ),
                            discountType: CampaignDiscountType.point,
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
