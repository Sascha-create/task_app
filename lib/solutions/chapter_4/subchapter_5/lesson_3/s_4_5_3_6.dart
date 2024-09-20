import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text("${products[index].name} ${products[index].price}"),
        );
      },
      itemCount: products.length,
      shrinkWrap: true,
    );
  }
}

List<Product> products = [
  Product(name: "Apfel", price: 4.99),
  Product(name: "Birne", price: 7.99),
  Product(name: "Wassermelone", price: 19.99),
  Product(name: "Banane", price: 15.99),
  Product(name: "Käsebrot", price: 99.99),
];

class Product {
  String name;
  double price;

  Product({required this.name, required this.price});
}
