import 'package:freezed_annotation/freezed_annotation.dart';

import '../data.dart';

part 'get_total_price_params.freezed.dart';
part 'get_total_price_params.g.dart';

@freezed
class GetTotalPriceParams with _$GetTotalPriceParams {
  factory GetTotalPriceParams({
    required final List<ProductDto> products,
    final List<CampaignDto>? campaigns,
  }) = _GetTotalPriceParams;

  factory GetTotalPriceParams.fromJson(Map<String, dynamic> json) => _$GetTotalPriceParamsFromJson(json);
}
