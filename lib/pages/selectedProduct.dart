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
          onPressed: (){},
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
                      Text(
                        product.productName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        product.description,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
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
                            onPressed: (){
                              setState(() {
                                numberOfOrders -= 1;
                                totalAmount = product.price * numberOfOrders;
                              });
                            },
                            icon: Icon(Icons.remove),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                          ),
                          Text(
                            numberOfOrders.toString(),
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          IconButton(
                            onPressed: (){
                              setState(() {
                                numberOfOrders += 1;
                                totalAmount = product.price * numberOfOrders;
                              });
                            },
                            icon: Icon(Icons.add),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),

                          ),
                        ],
                      ),
                    ],
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