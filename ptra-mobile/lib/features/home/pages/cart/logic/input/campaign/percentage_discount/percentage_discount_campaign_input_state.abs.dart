import 'package:freezed_annotation/freezed_annotation.dart';

part 'percentage_discount_campaign_input_state.abs.freezed.dart';

@freezed
class PercentageDiscountCampaignInputState with _$PercentageDiscountCampaignInputState {
  factory PercentageDiscountCampaignInputState({
    double? discount,
    @Default(false) bool isButtonEnabled,
    String? errorText,
  }) = _PercentageDiscountCampaignInputState;
}
