import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../providers/product_provider.dart';
import '../../widgets/view_product.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {

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
          'Favorites',
          style: TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
        backgroundColor: Color(0xFF33bf2e),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.vertical,
        children: List<Widget>.generate(products.length, (index) {
          return GridTile(
            // child: ViewProduct(
            //   product: products[index],
            // ),
            child: Card(
              child: Text("${products[index].name}"),
            ),
          );
        }),
      ),
    );
  }
}
