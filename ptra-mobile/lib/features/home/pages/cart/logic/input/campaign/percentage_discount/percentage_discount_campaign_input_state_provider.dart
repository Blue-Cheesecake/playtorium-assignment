import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../input.dart';

final percentageDiscountCampaignInputStateProvider = StateNotifierProvider.autoDispose<
    PercentageDiscountCampaignInputStateNotifier, PercentageDiscountCampaignInputState>((ref) {
  return PercentageDiscountCampaignInputStateNotifier();
});
