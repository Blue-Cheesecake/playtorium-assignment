import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';

class PTRAStateNotifier<T> extends StateNotifier<T> {
  PTRAStateNotifier(super.state);

  static const _location = 'PTRAStateNotifier';

  T? get safeState {
    if (!mounted) {
      return null;
    }
    return state;
  }

  set safeState(T? value) {
    if (!mounted || value == null) {
      PTRALogger.error(location: _location, message: 'Cannot set safeState of $T. Mounted: $mounted, Value: $value');
      return;
    }
    state = value;
  }
}
