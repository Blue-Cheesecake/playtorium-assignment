import '../../../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import 'api.dart';

class CalculationAPIStateNotifier extends PTRAStateNotifier<CalculationAPIState> {
  CalculationAPIStateNotifier({required GetTotalPriceUseCase getTotalPriceUseCase})
      : _getTotalPriceUseCase = getTotalPriceUseCase,
        super(CalculationAPIState.initial());

  final GetTotalPriceUseCase _getTotalPriceUseCase;

  Future<void> calculate({
    required final Map<int, CartInputInfoModel> products,
    required final List<CampaignDto> campaigns,
  }) async {
    safeState = CalculationAPIState.loading();

    final productsList = <ProductDto>[];
    products.forEach((productId, info) {
      productsList.add(ProductDto(id: productId, quantity: info.quantity));
    });

    final response = await _getTotalPriceUseCase.execute(GetTotalPriceParams(
      products: productsList,
      campaigns: campaigns,
    ));

    response.when(
      success: (data) {
        safeState = CalculationAPIState.data(data: data);
      },
      failure: (_) {
        safeState = CalculationAPIState.error();
      },
    );
  }
}
