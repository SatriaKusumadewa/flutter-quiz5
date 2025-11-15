import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';

class Soal1GridProduk extends StatelessWidget {
  const Soal1GridProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = ProductModel.getSampleProducts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Soal 1: Grid Produk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}