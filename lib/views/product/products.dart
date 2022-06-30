import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class Products extends StatefulWidget {

  final String title;
  // final List<Product> products;

  const Products({Key? key, required this.title}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33bf2e),
        backwardsCompatibility: true,
        title: Text(
          '${widget.title}',
          style: TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
      ),
      body: Container(
        child: Text('products'),
      ),
    );
  }
}
