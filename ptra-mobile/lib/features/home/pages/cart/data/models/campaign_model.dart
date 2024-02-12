import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'campaign_model.freezed.dart';
part 'campaign_model.g.dart';

@freezed
class CampaignModel with _$CampaignModel implements ICampaignEntity {
  factory CampaignModel({
    required final int id,
    required final String title,
    required final String description,
    required final int type,
    required final int categoryId,
    required final int discountType,
  }) = _CampaignModel;

  factory CampaignModel.fromJson(Map<String, dynamic> json) => _$CampaignModelFromJson(json);
}
