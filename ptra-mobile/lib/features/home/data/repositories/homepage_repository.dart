import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IHomepageRepository {
  Future<List<IProductEntity>> getAllProducts();
}

class HomepageRepository implements IHomepageRepository {
  HomepageRepository({required this.dataSource});

  final IHomepageDataSource dataSource;

  @override
  Future<List<IProductEntity>> getAllProducts() {
    final response = dataSource.getAllProducts();
    return response;
  }
}
