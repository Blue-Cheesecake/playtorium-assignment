import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

final homepageRepositoryProvider = Provider.autoDispose<IHomepageRepository>((ref) {
  return HomepageRepository(
    dataSource: HomepageRetrofitDataSource(dio: PTRADioClient.init(location: 'HomepageStateProvider')),
  );
});

final getAllProductsUseCaseProvider = Provider.autoDispose<GetAllProductsUseCase>((ref) {
  final repository = ref.watch(homepageRepositoryProvider);
  return GetAllProductsUseCase(repository: repository);
});

final homepageStateProvider = StateNotifierProvider.autoDispose<HomepageStateNotifier, HomepageState>((ref) {
  final getAllProductsUseCase = ref.watch(getAllProductsUseCaseProvider);
  return HomepageStateNotifier(getAllProductsUseCase: getAllProductsUseCase);
});
