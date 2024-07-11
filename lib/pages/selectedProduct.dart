import 'package:flutter/material.dart';
import 'package:hehe/Services/product.dart';

class selectedProduct extends StatefulWidget {

  final Product product;
  const selectedProduct({super.key, required this.product});

  @override
  State<selectedProduct> createState() =>
      _selectedProductState(product: product);
}

class _selectedProductState extends State<selectedProduct> {
  final Product product;
  late double totalAmount;
  int numberOfOrders = 1;
  _selectedProductState({required this.product});

  @override
  void initState() {
    super.initState();
    totalAmount = product.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Orders'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/img_1.png'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 700,
          child: Card(
            color: Colors.teal[200],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: 410,
                        height: 250,
                        child: Image.network(product.url),
                      ),
                      Container(
                        margin: EdgeInsets.all(15.0),
                        child: Text(
                          product.productName,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15.0),
                        child: Text(
                          product.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₱ ${totalAmount.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (numberOfOrders > 0) {
                                  numberOfOrders -= 1;
                                  totalAmount = product.price * numberOfOrders;
                                }
                              });
                            },
                            icon: Icon(Icons.remove),
                          ),
                          Text(
                            numberOfOrders.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                numberOfOrders += 1;
                                totalAmount = product.price * numberOfOrders;
                              });
                            },
                            icon: Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                    icon: Icon(Icons.shopping_cart),
                    label: Text('Check Out'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}