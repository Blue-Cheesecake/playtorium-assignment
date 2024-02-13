import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'cart.dart';

final cartInputStateProvider = StateNotifierProvider.autoDispose<CartInputStateNotifier, CartInputState>((ref) {
  return CartInputStateNotifier();
});
