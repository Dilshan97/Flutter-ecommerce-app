import 'dart:convert';
import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@lazySingleton
class Api {

  String baseUrl = "http://flutter-ecommerce-api.test/api/v1";

  var client = http.Client();

  Future<http.Response> register (String payload) async {
    String url = "$baseUrl/auth/register";
    return client.post(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
        body: payload,
    );
  }

  Future<http.Response> getCategories () async {
    String url = "$baseUrl/category/list";
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

  Future<http.Response> getMainCategories () async {
    String url = "$baseUrl/category/list?type=main";
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

  Future<http.Response> getProductsByCategory (String id) async {
    String url = "$baseUrl/category/get/$id";
    log(url);
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

  Future<http.Response> getProducts () async {
    String url = "$baseUrl/product/list";
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

  Future<http.Response> getProduct (String id) async {
    String url = "$baseUrl/product/get/$id}";
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

  Future<http.Response> getNexusDeals () async {
    String url = "$baseUrl/product/list?product_type=nexus-deals";
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

  Future<http.Response> getKeellsDeals () async {
    String url = "$baseUrl/product/list?product_type=keells-deals";
    return client.get(
        Uri.parse(url),
        headers: <String, String> {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json'
        },
    );
  }

}