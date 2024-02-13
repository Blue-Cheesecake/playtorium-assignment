import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'calculation_api_state.abs.freezed.dart';

@freezed
class CalculationAPIState with _$CalculationAPIState {
  factory CalculationAPIState.initial() = _CalculationAPIStateInitial;
  factory CalculationAPIState.loading() = _CalculationAPIStateLoading;
  factory CalculationAPIState.data({required ITotalPriceResult data}) = _CalculationAPIStateData;
  factory CalculationAPIState.error() = _CalculationAPIStateError;
}
