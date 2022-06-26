import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@lazySingleton
class Api {

  String baseUrl = "http://flutter-ecommerce-api.test/api/v1";

  var client = http.Client();

  Future<http.Response> getCategories () async {
    String url = "$baseUrl/category/list";
    return client.get(Uri.parse(url), headers: <String, String> {'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'});
  }

  Future<http.Response> getCategory (String id) async {
    String url = "$baseUrl/category/get/$id";
    return client.get(Uri.parse(url), headers: <String, String> {'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'});
  }

  Future<http.Response> getProducts () async {
    String url = "$baseUrl/product/list";
    return client.get(Uri.parse(url), headers: <String, String> {'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'});
  }

  Future<http.Response> getProduct (String id) async {
    String url = "$baseUrl/product/get/$id}";
    return client.get(Uri.parse(url), headers: <String, String> {'Content-Type': 'application/json; charset=UTF-8', 'Accept': 'application/json'});
  }

}