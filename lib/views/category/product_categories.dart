import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../providers/category_provider.dart';
import 'component/category_card.dart';

class ProductCategories extends StatefulWidget {
  const ProductCategories({Key? key}) : super(key: key);

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  List<Category> categories = [];

  @override
  void initState() {
    getCategories();
  }

  getCategories() async {
    categories = await CategoryProvider(context).getCategories();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
            fontFamily: "Poppins-Light",
          ),
        ),
        backgroundColor: Color(0xFF33bf2e),
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
