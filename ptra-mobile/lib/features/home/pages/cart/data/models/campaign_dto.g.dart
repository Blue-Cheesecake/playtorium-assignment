// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignDtoImpl _$$CampaignDtoImplFromJson(Map<String, dynamic> json) =>
    _$CampaignDtoImpl(
      id: json['id'] as int,
      discount: (json['discount'] as num).toDouble(),
      title: json['title'] as String,
      isPercentageType: json['isPercentageType'] as bool? ?? false,
      everyXPrice: (json['everyXPrice'] as num?)?.toDouble(),
      productCategory: json['productCategory'] as String?,
    );

Map<String, dynamic> _$$CampaignDtoImplToJson(_$CampaignDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'title': instance.title,
      'isPercentageType': instance.isPercentageType,
      'everyXPrice': instance.everyXPrice,
      'productCategory': instance.productCategory,
    };
