import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_campaign_input_state.abs.freezed.dart';

@freezed
class SpecialCampaignInputState with _$SpecialCampaignInputState {
  factory SpecialCampaignInputState({
    double? everyXPrice,
    double? discount,
    @Default(false) bool isButtonEnabled,
    String? errorText,
  }) = _SpecialCampaignInputState;
}
