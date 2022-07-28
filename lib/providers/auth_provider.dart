
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:keels/providers/token_provider.dart';
import 'package:keels/services/api.dart';

import '../models/user.dart';

class AuthProvider {

  late BuildContext? context;
  late User? user;

  AuthProvider([this.context]);

  Future<Map?> login (String email, String password) async {
    Map result = {
      "result": "unauthenticated",
      "access_token": null
    };
    await Api().login(email, password).then((data) async {

      log('request body ${data.body}');

      if(data.statusCode == 200 && jsonDecode(data.body)['success']) {
        Map payload = json.decode(data.body)['data'];
        log(payload.toString());

        TokenProvider tokenProvider = TokenProvider();
        await tokenProvider.setToken(payload['access_token']);
        await tokenProvider.setTokenExpiration(payload['expired_at']);
        await getUserData();

        result['result'] = "Authenticated";
        result['access_token'] = json.decode(data.body)['data']['access_token'];
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return result;
  }

  Future<Map?> register (String payload) async {
    Map? data_body;
    await Api().register(payload).then((data) {
      log('request body ${jsonDecode(data.body)}');
      if(data.statusCode == 201) {
        data_body = jsonDecode(data.body)['data'];
      } else {
        Map<String, dynamic> result = json.decode(data.body);
      }
    });
    return data_body;
  }

  Future<bool> getUserData () async {
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

  void setUser(value) {
    user = User.fromJson(value);
  }

  User getUser() {
    return user!; //returns the fetched user
  }

  bool isUser() {
    return user != null ? true : false; // returns true if user is not null, anf false otherwise
  }

}