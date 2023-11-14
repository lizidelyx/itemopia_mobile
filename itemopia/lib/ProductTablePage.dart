import 'package:flutter/material.dart';
import 'package:itemopia/left_drawer.dart';

class ProductTablePage extends StatelessWidget {
  final List<Product> products; // Assuming you have a Product class

  ProductTablePage({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Table'),
      ),
      drawer: LeftDrawer(),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Nama Produk')),
          DataColumn(label: Text('Amount')),
          DataColumn(label: Text('Deskripsi')),
        ],
        rows: products.map((product) {
          return DataRow(cells: [
            DataCell(Text(product.name)),
            DataCell(Text(product.amount.toString())),
            DataCell(Text(product.description)),
          ]);
        }).toList(),
      ),
    );
  }
}

// Assuming you have a Product class
class Product {
  final String name;
  final int amount;
  final String description;

  Product(
      {required this.name, required this.amount, required this.description});
}
