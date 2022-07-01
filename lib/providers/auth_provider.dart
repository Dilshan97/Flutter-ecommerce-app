
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:keels/services/api.dart';

class AuthProvider {

  late BuildContext context;

  AuthProvider(this.context);

  Future<String?> login (String email, String password) async {
    String? data_body;
    await Api().login(email, password).then((data) {
      if(data.statusCode == 200) {
        data_body = jsonDecode(data.body)['data'];
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        log(result.toString());
      }
    });
    return data_body;
  }

  Future<Map?> register (String payload) async {
    Map? data_body;
    await Api().register(payload).then((data) {
      if(data.statusCode == 201) {
        data_body = jsonDecode(data.body)['data'];
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return data_body;
  }


}