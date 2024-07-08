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
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(widget.product.productName),
              Text(widget.product.description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '₱ ${totalAmount.toString()}',
                  style:  TextStyle(
                    fontSize: 20.0,
    ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        if(numberOfOrders > 1){
                          numberOfOrders -= 1;
                          totalAmount = product.price * numberOfOrders;
                        }
                      });
                    },
                    icon: Icon(Icons.remove),
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.teal)
                    ),
                  ),
                  Text(
                    numberOfOrders.toString(),
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                  ),
                  IconButton(
                    onPressed:(){
                      setState(() {
                        numberOfOrders += 1;
                        totalAmount = product.price * numberOfOrders;
                      });
    },
                    icon: Icon(Icons.add),
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.teal)
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
}
}