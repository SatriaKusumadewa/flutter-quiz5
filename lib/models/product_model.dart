import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final String price;
  final IconData icon;

  ProductModel({
    required this.name,
    required this.price,
    required this.icon,
  });

  static List<ProductModel> getSampleProducts() {
    return [
      ProductModel(name: 'Laptop Gaming', price: 'Rp 15.000.000', icon: Icons.laptop),
      ProductModel(name: 'Smartphone', price: 'Rp 8.500.000', icon: Icons.phone_android),
      ProductModel(name: 'Headphone', price: 'Rp 1.200.000', icon: Icons.headphones),
      ProductModel(name: 'Smart Watch', price: 'Rp 3.500.000', icon: Icons.watch),
      ProductModel(name: 'Tablet', price: 'Rp 6.000.000', icon: Icons.tablet),
      ProductModel(name: 'Camera DSLR', price: 'Rp 12.000.000', icon: Icons.camera_alt),
      ProductModel(name: 'Speaker', price: 'Rp 2.500.000', icon: Icons.speaker),
      ProductModel(name: 'Keyboard Mech', price: 'Rp 1.800.000', icon: Icons.keyboard),
    ];
  }
}