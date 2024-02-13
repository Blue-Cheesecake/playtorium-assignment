// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_total_price_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTotalPriceParamsImpl _$$GetTotalPriceParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTotalPriceParamsImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      campaigns: (json['campaigns'] as List<dynamic>?)
          ?.map((e) => CampaignDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetTotalPriceParamsImplToJson(
        _$GetTotalPriceParamsImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'campaigns': instance.campaigns,
    };
