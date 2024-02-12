import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'total_price_result_model.freezed.dart';
part 'total_price_result_model.g.dart';

@freezed
class TotalPriceResult with _$TotalPriceResult implements ITotalPriceResult {
  factory TotalPriceResult({
    required final double totalPrice,
  }) = _TotalPriceResult;

  factory TotalPriceResult.fromJson(Map<String, dynamic> json) => _$TotalPriceResultFromJson(json);
}
