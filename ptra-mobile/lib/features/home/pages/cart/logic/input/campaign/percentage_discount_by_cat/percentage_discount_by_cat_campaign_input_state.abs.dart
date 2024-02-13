import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils/utils.dart';

part 'percentage_discount_by_cat_campaign_input_state.abs.freezed.dart';

@freezed
class PercentageDiscountByCatCampaignInputState with _$PercentageDiscountByCatCampaignInputState {
  factory PercentageDiscountByCatCampaignInputState({
    ProductCategory? productCategory,
    double? discount,
    @Default(false) bool isButtonEnabled,
    String? errorText,
  }) = _PercentageDiscountByCatCampaignInputState;
}
