import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../pages/cart/data/data.dart';
import '../../pages/cart/logic/logic.dart';
import '../../pages/cart/utils/utils.dart';
import '../../utils/utils.dart';

class PercentageDiscountByCatCardWD extends StatelessWidget {
  const PercentageDiscountByCatCardWD({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (context) => const _PercentageDiscountByCatCardDialog());
      },
      child: const CommonCampaignCardWD(
        id: 3,
        title: 'Percentage Discount by Item Category',
      ),
    );
  }
}

class _PercentageDiscountByCatCardDialog extends ConsumerStatefulWidget {
  const _PercentageDiscountByCatCardDialog();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => __PercentageDiscountByCatCardDialogState();
}

class __PercentageDiscountByCatCardDialogState extends ConsumerState<_PercentageDiscountByCatCardDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputState = ref.watch(percentageDiscountByCatCampaignInputStateProvider);

    return AlertDialog(
      title: const Text('Enter Percentage Discount'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BaseTextFieldWD(
            suffix: const Text('%'),
            hintText: '0.00',
            controller: _controller,
            onChanged: (value) => ref
                .read(percentageDiscountByCatCampaignInputStateProvider.notifier)
                .updateDiscount(double.tryParse(value ?? '0')),
            onSubmitted: (value) => ref
                .read(percentageDiscountByCatCampaignInputStateProvider.notifier)
                .updateDiscount(double.tryParse(value ?? '0')),
            keyboardType: TextInputType.number,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Category: '),
              const SizedBox(width: 5),
              DropdownButton(
                value: ref.watch(
                  percentageDiscountByCatCampaignInputStateProvider.select((value) => value.productCategory?.label),
                ),
                items: ProductCategory.values
                    .map((e) => DropdownMenuItem<String>(
                          value: e.label,
                          child: Text(e.label),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    final category = ProductCategory.fromLabel(value);
                    ref
                        .read(percentageDiscountByCatCampaignInputStateProvider.notifier)
                        .updateProductCategory(category);
                  }
                },
              ),
            ],
          ),
          if (inputState.errorText != null) const SizedBox(height: 20),
          if (inputState.errorText != null)
            Center(
              child: Text(
                inputState.errorText.toString(),
                style: const TextStyle(color: Colors.red),
              ),
            ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: inputState.isButtonEnabled
                ? () {
                    ref.read(cartInputStateProvider.notifier).addCampaign(
                          CampaignDto(
                            id: 3,
                            title: 'Percentage Discount by Item Category',
                            discount: ref.read(
                              percentageDiscountByCatCampaignInputStateProvider.select((value) => value.discount!),
                            ),
                            isPercentageType: true,
                            productCategory: ref.read(percentageDiscountByCatCampaignInputStateProvider
                                .select((value) => value.productCategory!.label)),
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
