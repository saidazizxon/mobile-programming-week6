import 'package:flutter/material.dart';

void main() => runApp(const Task1_2App());

class Task1_2App extends StatelessWidget {
  const Task1_2App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ProductCard(productName: "Laptop", price: 999.99),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final double price;

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.shopping_bag),
        title: Text(productName),
        subtitle: Text("\$${price.toStringAsFixed(2)}"),
      ),
    );
  }
}
