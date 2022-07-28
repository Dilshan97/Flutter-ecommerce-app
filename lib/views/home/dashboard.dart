import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/product.dart';
import 'package:keels/models/user.dart';
import 'package:keels/providers/auth_provider.dart';
import 'package:keels/providers/product_provider.dart';
import 'package:keels/providers/token_provider.dart';
import 'package:keels/views/home/component/top_products.dart';
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
  List<Product> nexus_products = [];
  List<Product> keells_products = [];

  @override
  void initState() {
    super.initState();
    getCategories();
    getProducts();
  }

  getCategories() async {
    categories = await CategoryProvider(context).getMainCategories();
    setState(() {});
  }

  getProducts() async {
    nexus_products = await ProductProvider(context).getNexusProducts();
    keells_products = await ProductProvider(context).getKeellsProducts();
    setState(() {});
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
                products: nexus_products,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: TopProducts(
                title: "Keells Deals",
                products: keells_products,
              ),
            )
          ],
        ),
      ),
    );
  }
}
