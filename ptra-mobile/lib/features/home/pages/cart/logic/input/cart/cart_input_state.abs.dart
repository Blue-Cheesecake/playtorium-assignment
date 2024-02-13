import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data.dart';

part 'cart_input_state.abs.freezed.dart';

@freezed
class CartInputState with _$CartInputState {
  factory CartInputState({
    @Default({}) final Map<int, CartInputInfoModel> products, // productId -> CartInputInfoModel
    @Default([]) final List<CampaignDto> campaigns,
  }) = _CartInputState;
}
