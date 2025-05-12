import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list_app/features/product/domain/repositories/product_repository_impl.dart';
import 'features/product/data/datasources/product_local_data_source.dart';
import 'features/product/domain/usecases/get_products.dart';
import 'features/product/domain/usecases/search_products.dart';
import 'features/product/presentation/bloc/product_bloc.dart';
import 'features/product/presentation/pages/product_list_page.dart';

void main() {
  final localDataSource = ProductLocalDataSourceImpl();
  final repository = ProductRepositoryImpl(localDataSource);
  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
  final ProductRepositoryImpl repository;

  const MyApp({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (_) => ProductBloc(
          getProducts: GetProducts(repository),
          searchProducts: SearchProducts(repository),
        ),
        child: const ProductListPage(),
      ),
    );
  }
}
