import 'package:flutter/material.dart';
import 'package:hehe/Services/product.dart';

class selectedProduct extends StatefulWidget {

  final Product product;
  const selectedProduct({super.key, required this.product});

  @override
  State<selectedProduct> createState() => _selectedProductState();
}

class _selectedProductState extends State<selectedProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text('Order'),
    backgroundColor: Colors.teal,
    centerTitle: true,
    ),
      body: Column(
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
              Text(widget.product.price.toString()),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){
                      },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.teal)
                    ),
                  ),
                  Text(widget.product.price.toString()),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){},
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