import 'package:flutter/material.dart';

import '../widgets/produc_card.dart';
class ProductList extends StatefulWidget {
  final String productlist;
  const ProductList({super.key, required this.productlist});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text(widget.productlist),),
      body: GridView.builder(
        itemCount: 15,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 0.8),
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
            child: FittedBox(child: ProductCard()),
          );
        },
      ),

    );
  }
}
