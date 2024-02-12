import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'cart_retrofit_datasource.g.dart';

abstract interface class ICartDataSource {
  Future<List<ICampaignEntity>> getCampaigns();
  Future<ITotalPriceResult> getTotalPrice({required List<ProductDto> products, List<CampaignDto>? campaigns});
}

@RestApi()
abstract class CartRetrofit {
  factory CartRetrofit(Dio dio) => _CartRetrofit(dio);

  @GET(CartBaseURL.saleCampaign)
  Future<List<CampaignModel>> getCampaigns();

  @POST(CartBaseURL.saleCampaign)
  Future<TotalPriceResult> getTotalPrice({
    @Body() required List<ProductDto> products,
    @Body() List<CampaignDto>? campaigns,
  });
}

class CartRetrofitDataSource implements ICartDataSource {
  CartRetrofitDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<List<ICampaignEntity>> getCampaigns() {
    final retrofit = CartRetrofit(_dio);
    final response = retrofit.getCampaigns();
    return response;
  }

  @override
  Future<ITotalPriceResult> getTotalPrice({required List<ProductDto> products, List<CampaignDto>? campaigns}) {
    final retrofit = CartRetrofit(_dio);
    final response = retrofit.getTotalPrice(products: products, campaigns: campaigns);
    return response;
  }
}
