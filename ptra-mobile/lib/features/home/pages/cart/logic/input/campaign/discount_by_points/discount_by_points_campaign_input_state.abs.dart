import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_by_points_campaign_input_state.abs.freezed.dart';

@freezed
class DiscountByPointsCampaignInputState with _$DiscountByPointsCampaignInputState {
  factory DiscountByPointsCampaignInputState({
    double? discount,
    @Default(false) bool isButtonEnabled,
    String? errorText,
  }) = _DiscountByPointsCampaignInputState;
}
