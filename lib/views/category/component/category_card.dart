import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';

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
      onTap: () => {
        log("message")
      },
      child: Card(
        child: Column(
          children: [
            Image.network("https://imgk.timesnownews.com/story/vegetables_1.jpg?tr=w-1200,h-900"),
            Text(
              "${widget.category.name}",
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}
