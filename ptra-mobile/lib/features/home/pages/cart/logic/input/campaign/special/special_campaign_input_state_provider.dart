import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../input.dart';

final specialCampaignInputStateProvider =
    StateNotifierProvider.autoDispose<SpecialCampaignInputStateNotifier, SpecialCampaignInputState>((ref) {
  return SpecialCampaignInputStateNotifier();
});
