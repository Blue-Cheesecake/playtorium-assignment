import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_dto.freezed.dart';
part 'campaign_dto.g.dart';

@freezed
class CampaignDto with _$CampaignDto {
  factory CampaignDto({
    required final int id,
    required final double discount,
    required final String title, // NOTE: it will not be used in Server.
    @Default(false) final bool isPercentageType, // NOTE: it will not be used in Server.
    double? everyXPrice,
    String? productCategory,
  }) = _CampaignDto;

  factory CampaignDto.fromJson(Map<String, dynamic> json) => _$CampaignDtoFromJson(json);
}
