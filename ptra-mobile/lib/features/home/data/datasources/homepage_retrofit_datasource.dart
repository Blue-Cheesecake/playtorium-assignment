import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'homepage_retrofit_datasource.g.dart';

abstract interface class IHomepageDataSource {
  Future<List<IProductEntity>> getAllProducts();
}

@RestApi()
abstract class HomepageRetrofit {
  factory HomepageRetrofit(Dio dio) => _HomepageRetrofit(dio);

  @GET(HomepageBaseURL.product)
  Future<List<ProductModel>> getAllProducts();
}

class HomepageRetrofitDataSource implements IHomepageDataSource {
  HomepageRetrofitDataSource({required this.dio});

  final Dio dio;

  @override
  Future<List<IProductEntity>> getAllProducts() {
    final retrofit = HomepageRetrofit(dio);
    final response = retrofit.getAllProducts();
    return response;
  }
}
