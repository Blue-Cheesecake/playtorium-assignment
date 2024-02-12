import '../data.dart';

class GetTotalPriceParams {
  GetTotalPriceParams({required this.products, this.campaigns});

  final List<ProductDto> products;
  List<CampaignDto>? campaigns;
}
