import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../campaign.dart';

final fixedAmountCampaignInputStateProvider =
    StateNotifierProvider.autoDispose<FixedAmountCampaignInputStateNotifier, FixedAmountCampaignInputState>((ref) {
  return FixedAmountCampaignInputStateNotifier();
});
