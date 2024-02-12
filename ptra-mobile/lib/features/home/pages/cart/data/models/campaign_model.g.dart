// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignModelImpl _$$CampaignModelImplFromJson(Map<String, dynamic> json) =>
    _$CampaignModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as int,
      categoryId: json['categoryId'] as int,
      discountType: json['discountType'] as int,
    );

Map<String, dynamic> _$$CampaignModelImplToJson(_$CampaignModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'categoryId': instance.categoryId,
      'discountType': instance.discountType,
    };
