import '../../../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class GetTotalPriceUseCase extends BaseUseCase<GetTotalPriceParams, ITotalPriceResult> {
  GetTotalPriceUseCase({required ICartRepository repository}) : _repository = repository;

  final ICartRepository _repository;

  @override
  Future<ITotalPriceResult> call(GetTotalPriceParams params) {
    final response = _repository.getTotalPrice(products: params.products, campaigns: params.campaigns);
    return response;
  }
}
