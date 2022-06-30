import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:keels/views/category/category_product.dart';

class ViewCategory extends StatefulWidget {
  final Category category;

  const ViewCategory({Key? key, required this.category}) : super(key: key);

  @override
  State<ViewCategory> createState() => _ViewCategoryState();
}

class _ViewCategoryState extends State<ViewCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.width * 0.29,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => CategoryProduct(
                category: widget.category,
              ),
            ),
          )
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF33bf2e),
              ),
              margin: EdgeInsets.only(left: 5),
              padding: EdgeInsets.all(12),
              child: Text(
                "${widget.category.name}",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
