import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../input.dart';

class PercentageDiscountCampaignInputStateNotifier extends StateNotifier<PercentageDiscountCampaignInputState> {
  PercentageDiscountCampaignInputStateNotifier() : super(PercentageDiscountCampaignInputState());

  void _validateDiscount() {
    final isValid = CartValidationFunction.validatePercentageValue(state.discount);
    if (isValid) {
      state = state.copyWith(isButtonEnabled: true, errorText: null);
      return;
    }
    state = state.copyWith(isButtonEnabled: false, errorText: CartMessages.invalidInputValue);
  }

  void updateDiscount(double? value) {
    state = state.copyWith(discount: value);
    _validateDiscount();
  }
}
