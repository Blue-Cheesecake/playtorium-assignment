import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../input.dart';

final percentageDiscountByCatCampaignInputStateProvider = StateNotifierProvider.autoDispose<
    PercentageDiscountByCatCampaignInputStateNotifier, PercentageDiscountByCatCampaignInputState>((ref) {
  return PercentageDiscountByCatCampaignInputStateNotifier();
});
