import '../../../utils/utils.dart';
import '../domain/domain.dart';
import 'logic.dart';

class HomepageStateNotifier extends PTRAStateNotifier<HomepageState> {
  HomepageStateNotifier({
    required GetAllProductsUseCase getAllProductsUseCase,
  })  : _getAllProductsUseCase = getAllProductsUseCase,
        super(HomepageState.loading());

  final GetAllProductsUseCase _getAllProductsUseCase;

  Future<void> fetchProducts() async {
    safeState = HomepageState.loading();
    final response = await _getAllProductsUseCase.execute(null);

    response.when(
      success: (data) {
        safeState = HomepageState.data(products: data);
      },
      failure: (_) {
        safeState = HomepageState.error();
      },
    );
  }
}
