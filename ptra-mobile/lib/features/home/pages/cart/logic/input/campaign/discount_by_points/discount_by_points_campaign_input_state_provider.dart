import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'discount_by_points.dart';

final discountByPointsCampaignInputStateProvider =
    StateNotifierProvider.autoDispose<DiscountByPointsCampaignInputStateNotifier, DiscountByPointsCampaignInputState>(
        (ref) {
  return DiscountByPointsCampaignInputStateNotifier();
});
