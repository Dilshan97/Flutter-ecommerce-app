import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:keels/models/product.dart';
import 'package:keels/providers/category_provider.dart';
import 'package:keels/providers/product_provider.dart';
import 'package:keels/widgets/view_product.dart';

class CategoryProduct extends StatefulWidget {
  final Category category;

  const CategoryProduct({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    products.clear();
    products = await ProductProvider(context).getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.category.name}",
          style: const TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List<Widget>.generate(products.length, (index) {
          return GridTile(
            child: ViewProduct(
              product: products[index],
            ),
          );
        }),
      ),
    );
  }
}
