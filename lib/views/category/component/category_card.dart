import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:page_transition/page_transition.dart';

import '../../../widgets/view_category.dart';
import '../category_product.dart';

class CategoryCard extends StatefulWidget {

  final Category category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => CategoryProduct(
              category: widget.category,
            ),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            elevation: 8,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(150),
            // ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "${widget.category.image}",
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: MediaQuery.of(context).size.height * 0.10,
                )
              ],
            ),
          ),
          Text(
            "${widget.category.name}",
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600
            ),
          ),
        ],
      )
    );
  }
}
