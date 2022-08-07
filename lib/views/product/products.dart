
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../providers/product_provider.dart';
import '../../widgets/view_product.dart';

class Products extends StatefulWidget {

  final String title;
  final List<Product> products;

  const Products({Key? key, required this.title, required this.products}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  // List<Product> products = [];

  @override
  void initState() {
    // log(widget.category_id.toString());
    getProducts();
  }

  getProducts() async {
    // products = await ProductProvider(context).getProductsByCategory(widget.category_id.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF33bf2e),
        backwardsCompatibility: true,
        title: Text(
          '${widget.title}',
          style: const TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
      ),
      body:  GridView.count(
        crossAxisCount: 2,
        children: List<Widget>.generate(widget.products.length, (index) {
          return GridTile(
            child: ViewProduct(
              product: widget.products[index],
            ),
          );
        }),
      ),
    );
  }
}
