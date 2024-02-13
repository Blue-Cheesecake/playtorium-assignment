import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_dto.freezed.dart';
part 'campaign_dto.g.dart';

@freezed
class CampaignDto with _$CampaignDto {
  factory CampaignDto({
    required final int id,
    required final int discount,
    double? everyXPrice,
    String? productCategory,
  }) = _CampaignDto;

  factory CampaignDto.fromJson(Map<String, dynamic> json) => _$CampaignDtoFromJson(json);
}