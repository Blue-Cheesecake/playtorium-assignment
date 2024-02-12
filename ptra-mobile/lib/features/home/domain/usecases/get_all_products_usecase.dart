import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class GetAllProductsUseCase extends BaseUseCase<void, List<IProductEntity>> {
  GetAllProductsUseCase({required this.repository});

  final IHomepageRepository repository;

  @override
  Future<List<IProductEntity>> call(void params) {
    final response = repository.getAllProducts();
    return response;
  }
}
