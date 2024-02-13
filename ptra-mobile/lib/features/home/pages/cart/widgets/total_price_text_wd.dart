import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/logic.dart';

class TotalPriceTextWD extends ConsumerStatefulWidget {
  const TotalPriceTextWD({super.key});

  @override
  ConsumerState<TotalPriceTextWD> createState() => _TotalPriceTextWDState();
}

class _TotalPriceTextWDState extends ConsumerState<TotalPriceTextWD> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      final state = ref.read(cartInputStateProvider);
      ref.read(calculationAPIStateProvider.notifier).calculate(
            products: state.products,
            campaigns: state.campaigns,
          );
    });
  }

  Widget _buildTotalPriceText([double? result]) {
    return Text('Total Price: ${result ?? '--'}');
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(calculationAPIStateProvider).when(
          initial: () => _buildTotalPriceText(),
          loading: () => const Text('Calculating...'),
          data: (data) => _buildTotalPriceText(data.totalPrice),
          error: () => const Text('An error is occurred'),
        );
  }
}
