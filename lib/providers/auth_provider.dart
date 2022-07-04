
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:keels/providers/token_provider.dart';
import 'package:keels/services/api.dart';

import '../models/user.dart';

class AuthProvider {

  late BuildContext context;
  late User? user;

  AuthProvider(this.context);

  Future<Map?> login (String email, String password) async {
    Map result = {
      "result": "unauthenticated",
      "access_token": null
    };
    await Api().login(email, password).then((data) async {
      if(data.statusCode == 200 && jsonDecode(data.body)['success']) {
        Map payload = json.decode(data.body)['data'];

        TokenProvider tokenProvider = TokenProvider();
        await tokenProvider.setToken(payload['access_token']);
        await tokenProvider.setTokenExpiration(payload['expired_at']);
        await getUser();

        result['result'] = "Authenticated";
        result['access_token'] = json.decode(data.body)['data']['access_token'];
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        log(result.toString());
      }
    });
    return result;
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

  Future<bool> getUser () async {
    bool result = false;
    await Api().getUser().then((data) async {
      if(data.statusCode == 200 && json.decode(data.body)['success']) {
        // log(json.decode(data.body)['data'].toString());
        user = User.fromJson(json.decode(data.body)['data']);
        TokenProvider().saveUser(user!);
        result = true;
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return result;
  }

}