import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(product.imageUrl, width: 150, height: 150)),
            SizedBox(height: 16),
            Text(product.name, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 8),
            Text('\$${product.price.toStringAsFixed(2)}', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 16),
            // Add more product details here if needed
          ],
        ),
      ),
    );
  }
}
