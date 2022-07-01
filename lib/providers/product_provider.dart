import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:keels/models/product.dart';

import '../services/api.dart';

class ProductProvider {
  late BuildContext context;

  ProductProvider(this.context);

  Future<List<Product>> getProducts() async {
    List<Product> products = [];
    await Api().getProducts().then((data) async {
      if(data.statusCode == 200) {
        List<dynamic> list = json.decode(data.body)['data'];
        products = list.map((e) => Product.fromJson(e)).toList();
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return products;
  }

  Future<List<Product>> getProductsByCategory(String id) async {
    List<Product> products = [];
    await Api().getProductsByCategory(id).then((data) async {
      if(data.statusCode == 200) {
        List<dynamic> list = json.decode(data.body)['data'];
        products = list.map((e) => Product.fromJson(e)).toList();
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return products;
  }

  Future<List<Product>> getNexusProducts() async {
    List<Product> products = [];
    await Api().getNexusDeals().then((data) async {
      if(data.statusCode == 200) {
        List<dynamic> list = json.decode(data.body)['data'];
        products = list.map((e) => Product.fromJson(e)).toList();
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return products;
  }

  Future<List<Product>> getKeellsProducts() async {
    List<Product> products = [];
    await Api().getKeellsDeals().then((data) async {
      if(data.statusCode == 200) {
        List<dynamic> list = json.decode(data.body)['data'];
        products = list.map((e) => Product.fromJson(e)).toList();
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return products;
  }
}