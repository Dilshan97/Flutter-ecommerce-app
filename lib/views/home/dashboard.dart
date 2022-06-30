import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/product.dart';
import 'package:keels/providers/product_provider.dart';
import 'package:keels/views/home/component/top_products.dart';
import 'package:keels/views/home/home.dart';
import '../../models/category.dart';
import '../../providers/category_provider.dart';
import 'component/banner_slider.dart';
import 'component/categories.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Category> categories = [];
  List<Product> products = [];

  @override
  void initState() {
    getCategories();
    getProducts();
    super.initState();
  }


  @override
  void setState(fn) {
    if(mounted) {
      super.setState(fn);
    }
  }

  getCategories() async {
    categories = await CategoryProvider(context).getCategories();
  }

  getProducts() async {
    products = await ProductProvider(context).getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Keells",
          style: TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
        backgroundColor: Color(0xFF33bf2e),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            BannerSlider(),
            Categories(categories: categories),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: TopProducts(
                title: "Nexus Member Deals",
                products: products,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: TopProducts(
                title: "Keells Deals",
                products: products,
              ),
            )
          ],
        ),
      ),
    );
  }
}
