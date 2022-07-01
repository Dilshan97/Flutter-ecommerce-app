
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:keels/models/product.dart';
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
    products = await ProductProvider(context).getProductsByCategory(widget.category.id.toString());
    setState((){});
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
        backgroundColor: Color(0xFF33bf2e),
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
