import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hehe/Services/product.dart';
import 'package:hehe/Services/menuCard.dart';
import 'package:http/http.dart' as http;

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Future<List<dynamic>> products;
  Future<List<dynamic>> fetchData() async{
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/products'));
    final data = jsonDecode(response.body);
    List products = <Product>[];
    for(var product in data){
      products.add(Product.fromJson(product));
    }
    for(var product in products){
      print(product.productName);
    }
    return products;
  }

  @override
  void initState(){
    super.initState();
    products = fetchData();
  }

  // List products = <Product>[
  //   Product(productName: "Gin Bilog", price: 120.00),
  //   Product(productName: "Soju", price: 85.00),
  //   Product(productName: "Root Bear", price: 75.00),
  //   Product(productName: "San Miguel", price: 45.00),
  //   Product(productName: "Red Wine",price:1500.00),
  //
  // ];
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
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: FutureBuilder(
          future: products,
          builder: (context, snapshots){
    if(snapshots.connectionState == ConnectionState.waiting){
    return Center(
    child: SpinKitHourGlass(
    color: Colors.teal,
    size: 60.0,
    ),
    );
    }
    if (snapshots.hasData){
    List products = snapshots.data!;
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return Card(
            color: Colors.teal,
            child: ListTile(
              title: Column(
                children: [
                  Text(products[index].productName),
                  Text(products[index].price.toString()),
                ],
              )
            ),
          );
        },
      ),
    );
    }
    return Center(
    child: Text('Unable to load Data'),
    );
    },
      ),
    ),
    );
  }
}