import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/utils.dart';
import '../../input.dart';

class PercentageDiscountByCatCampaignInputStateNotifier
    extends StateNotifier<PercentageDiscountByCatCampaignInputState> {
  PercentageDiscountByCatCampaignInputStateNotifier() : super(PercentageDiscountByCatCampaignInputState());

  void _validateDiscount() {
    final isValid = CartValidationFunction.validatePercentageValue(state.discount);
    if (isValid && state.productCategory != null) {
      state = state.copyWith(isButtonEnabled: true, errorText: null);
      return;
    }
    state = state.copyWith(isButtonEnabled: false, errorText: CartMessages.invalidInputValue);
  }

  void updateDiscount(double? value) {
    state = state.copyWith(discount: value);
    _validateDiscount();
  }

  void updateProductCategory(ProductCategory? value) {
    state = state.copyWith(productCategory: value);
    _validateDiscount();
  }
}
