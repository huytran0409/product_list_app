import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../../data/datasources/product_local_data_source.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductLocalDataSource localDataSource;

  ProductRepositoryImpl(this.localDataSource);

  List<Product> _cache = [];

  @override
  Future<List<Product>> getProducts() async {
    _cache = await localDataSource.getProducts();
    return _cache;
  }

  @override
  Future<List<Product>> searchProducts(String query) async {
    if (_cache.isEmpty) {
      await getProducts();
    }
    if (query.isEmpty) {
      return _cache;
    }
    return _cache
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
