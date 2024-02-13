import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixed_amount_campaign_input_state.abs.freezed.dart';

@freezed
class FixedAmountCampaignInputState with _$FixedAmountCampaignInputState {
  factory FixedAmountCampaignInputState({
    double? discount,
    @Default(false) bool isButtonEnabled,
    String? errorText,
  }) = _FixedAmountCampaignInputState;
}
