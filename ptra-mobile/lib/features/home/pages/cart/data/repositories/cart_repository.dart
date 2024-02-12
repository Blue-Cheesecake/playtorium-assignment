import '../../domain/domain.dart';
import '../data.dart';

abstract interface class ICartRepository {
  Future<List<ICampaignEntity>> getCampaigns();
  Future<ITotalPriceResult> getTotalPrice({required List<ProductDto> products, List<CampaignDto>? campaigns});
}

class CartRepository implements ICartRepository {
  CartRepository({required ICartDataSource dataSource}) : _dataSource = dataSource;

  final ICartDataSource _dataSource;

  @override
  Future<List<ICampaignEntity>> getCampaigns() {
    final response = _dataSource.getCampaigns();
    return response;
  }

  @override
  Future<ITotalPriceResult> getTotalPrice({required List<ProductDto> products, List<CampaignDto>? campaigns}) {
    final response = _dataSource.getTotalPrice(products: products, campaigns: campaigns);
    return response;
  }
}
