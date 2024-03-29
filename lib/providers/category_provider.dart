
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:keels/models/category.dart';
import 'package:keels/models/product.dart';
import 'package:keels/services/api.dart';
import 'dart:convert';

class CategoryProvider {

  late BuildContext context;

  CategoryProvider(this.context);

  Future<List<Category>> getCategories() async {
    List<Category> categories = [];
    await Api().getCategories().then((data) async {
        if(data.statusCode == 200) {
          List<dynamic> list = json.decode(data.body)['data'];
          categories = list.map((e) => Category.fromJson(e)).toList();
        } else {
          Map<String, dynamic> result = json.decode(data.body);
        }
    });
    return categories;
  }

  Future<List<Category>> getMainCategories() async {
    List<Category> categories = [];
    await Api().getMainCategories().then((data) async {
      if(data.statusCode == 200) {
        List<dynamic> list = json.decode(data.body)['data'];
        categories = list.map((e) => Category.fromJson(e)).toList();
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return categories;
  }

  // Future<List<Category>> getCategory(String id) async {
  //   List<Category> products = [];
  //   await Api().getCategory(id).then((data) async {
  //     if(data.statusCode == 200) {
  //       List<dynamic> list = json.decode(data.body)['data'];
  //       products = list.map((e) => Category.fromJson(e)).toList();
  //     } else {
  //       Map<String, dynamic> result = json.decode(data.body);
  //     }
  //   });
  //   log(products.toString());
  //   return products;
  // }


}