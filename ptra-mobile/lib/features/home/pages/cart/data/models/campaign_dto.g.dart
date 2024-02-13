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
      discountType:
          $enumDecode(_$CampaignDiscountTypeEnumMap, json['discountType']),
      everyXPrice: (json['everyXPrice'] as num?)?.toDouble(),
      productCategory: json['productCategory'] as String?,
    );

Map<String, dynamic> _$$CampaignDtoImplToJson(_$CampaignDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'discount': instance.discount,
      'title': instance.title,
      'discountType': _$CampaignDiscountTypeEnumMap[instance.discountType]!,
      'everyXPrice': instance.everyXPrice,
      'productCategory': instance.productCategory,
    };

const _$CampaignDiscountTypeEnumMap = {
  CampaignDiscountType.baht: 'baht',
  CampaignDiscountType.percentage: 'percentage',
  CampaignDiscountType.point: 'point',
};
