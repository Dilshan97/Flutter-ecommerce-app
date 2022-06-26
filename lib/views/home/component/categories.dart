import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:keels/providers/category_provider.dart';
import '../../../widgets/view_category.dart';
import '../../category/product_categories.dart';
import '../../category/product_category.dart';

class Categories extends StatefulWidget {

  final List<Category> categories;

  const Categories({Key? key, required this.categories}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.0,
          ),
          Container(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.04,
                left: MediaQuery.of(context).size.width * 0.02
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "All Categories",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins-Light"
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    InkWell(
                      child: const Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontFamily: "Poppins-Light"
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const ProductCategories(),
                          ),
                        );
                      },
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 14,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.08+ MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
            child: ListView.builder(
              itemCount: widget.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => ViewCategory(
                  category: widget.categories[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
