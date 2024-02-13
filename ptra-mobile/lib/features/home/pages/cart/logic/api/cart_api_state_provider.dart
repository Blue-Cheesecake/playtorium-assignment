import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/core.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../logic.dart';

final cartRepositoryProvider = Provider.autoDispose<ICartRepository>((ref) {
  return CartRepository(dataSource: CartRetrofitDataSource(dio: PTRADioClient.init(location: 'CartAPIStateProvider')));
});

final getTotalPriceUseCaseProvider = Provider.autoDispose<GetTotalPriceUseCase>((ref) {
  final repository = ref.watch(cartRepositoryProvider);
  return GetTotalPriceUseCase(repository: repository);
});

final calculationAPIStateProvider =
    StateNotifierProvider.autoDispose<CalculationAPIStateNotifier, CalculationAPIState>((ref) {
  final getTotalPriceUseCase = ref.watch(getTotalPriceUseCaseProvider);
  return CalculationAPIStateNotifier(getTotalPriceUseCase: getTotalPriceUseCase);
});
