import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../campaign.dart';

class FixedAmountCampaignInputStateNotifier extends StateNotifier<FixedAmountCampaignInputState> {
  FixedAmountCampaignInputStateNotifier() : super(FixedAmountCampaignInputState());

  void _validateDiscount() {
    final isValid = CartValidationFunction.validateDecimalValue(state.discount);
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
