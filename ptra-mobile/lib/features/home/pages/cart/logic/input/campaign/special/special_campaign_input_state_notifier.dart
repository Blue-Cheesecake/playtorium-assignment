import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../input.dart';

class SpecialCampaignInputStateNotifier extends StateNotifier<SpecialCampaignInputState> {
  SpecialCampaignInputStateNotifier() : super(SpecialCampaignInputState());

  void _validateDiscount() {
    final isValid = CartValidationFunction.validateDecimalValue(state.discount) &&
        CartValidationFunction.validateDecimalValue(state.everyXPrice);
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
