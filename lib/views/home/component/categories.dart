import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List categories = [
    {
      "id": 1,
      "name": "Vegetables",
      "slug": "vegetables"
    },
    {
      "id": 2,
      "name": "Fruits",
      "slug": "fruits"
    },
    {
      "id": 3,
      "name": "Beverages",
      "slug": "beverages"
    },
    {
      "id": 4,
      "name": "Grocery",
      "slug": "grocery"
    },
    {
      "id": 5,
      "name": "Household",
      "slug": "household"
    },
    {
      "id": 6,
      "name": "Meat",
      "slug": "meat"
    }
  ];

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
                      fontWeight: FontWeight.w600
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "View All",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.green
                      ),
                    ),
                    Icon(
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
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.075),
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.width * 0.29,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    log(index.toString());
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.green,
                        child: Text(categories[index]['name']),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
