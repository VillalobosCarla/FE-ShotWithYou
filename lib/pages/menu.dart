import 'package:flutter/material.dart';
import 'package:hehe/Services/product.dart';
import 'package:hehe/Services/menuCard.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
   List products = <Product>[
     Product(productName: "Gin Bilog", price: 120.00),
     Product(productName: "Soju", price: 85.00),
     Product(productName: "Root Bear", price: 75.00),
     Product(productName: "San Miguel", price: 45.00),
     Product(productName: "Red Wine",price:1500.00),
   ];

  Widget cardTemplate(product){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(product.productName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                )
            ),
            Text( '${product.price}'),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
           children: products.map((product) =>Menucard(product:product)).toList(),
        ),
      ),
    );
  }
}