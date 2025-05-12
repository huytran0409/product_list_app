import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductItem({Key? key, required this.product, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(product.name),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      onTap: onTap,
    );
  }
}
