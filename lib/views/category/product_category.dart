import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:keels/providers/category_provider.dart';
import 'package:keels/views/category/component/category_card.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({Key? key}) : super(key: key);

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  List<Category> categories = [];

  @override
  void initState() {
    getCategories();
  }

  getCategories() async {
    categories = await CategoryProvider(context).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List<Widget>.generate(categories.length, (index) {
          return GridTile(
            child: CategoryCard(
              category: categories[index],
            ),
          );
        }),
      ),
    );
  }
}
