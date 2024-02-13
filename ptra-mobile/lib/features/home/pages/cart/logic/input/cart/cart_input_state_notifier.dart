import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/domain.dart';
import '../../../data/data.dart';
import '../input.dart';

class CartInputStateNotifier extends StateNotifier<CartInputState> {
  CartInputStateNotifier() : super(CartInputState());

  void addProduct(IProductEntity data) {
    final map = {...state.products};
    if (map.containsKey(data.id)) {
      map.update(data.id, (value) => CartInputInfoModel(data: value.data, quantity: value.quantity + 1));
    } else {
      map[data.id] = CartInputInfoModel(data: data, quantity: 1);
    }
    state = state.copyWith(products: map);
  }

  void removeProduct(IProductEntity data) {
    final map = {...state.products};
    if (map[data.id]!.quantity - 1 <= 0) {
      map.remove(data.id);
    } else {
      map.update(data.id, (value) => CartInputInfoModel(data: value.data, quantity: value.quantity - 1));
    }
    state = state.copyWith(products: map);
  }

  void addCampaign(CampaignDto value) {
    final list = [...state.campaigns];
    list.add(value);
    state = state.copyWith(campaigns: list);
  }

  void removeCampaignAt(int index) {
    final list = [...state.campaigns];
    list.removeAt(index);
    state = state.copyWith(campaigns: list);
  }
}
