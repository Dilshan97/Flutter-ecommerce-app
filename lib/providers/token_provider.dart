import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:keels/models/user.dart';
import 'package:localstorage/localstorage.dart';

class TokenProvider {
  late FlutterSecureStorage secureStorage;
  late LocalStorage storage;
  late User user;

  TokenProvider() {
    storage = LocalStorage("Keells");
    secureStorage = const FlutterSecureStorage();

    if (storage.getItem("user_info") is Map<String, dynamic>) {
      user = User.fromJson(storage.getItem("user_info"));
    } else {
      user = storage.getItem("user_info");
    }
  }

  Future<void> setToken(String token) async {
    await secureStorage.write(key: 'access_token', value: token);
  }

  Future<String?> getToken() async {
    return await secureStorage.read(key: 'access_token');
  }

  saveUser(User user) async {
    await storage.setItem("user_info", user);
  }

  setTokenExpiration(String date) async {
    await secureStorage.write(key: 'token_expiration', value: date);
  }
  
  getTokenExpiration() async {
    return await secureStorage.read(key: 'token_expiration');
  }

  User? getUser() {
    if (storage.getItem("user_info") is Map<String, dynamic>) {
      user = User.fromJson(storage.getItem("user_info"));
    } else {
      user = storage.getItem("user_info");
    }
    return user;
  }

  Future<bool> checkToken() async {
    String? token;
    String? remember;
    bool status = false;

    try {
      token = (await secureStorage.read(key: "access_token"));
      remember = await secureStorage.read(key: "remember") ?? "true";
    } catch (e) {
      status = false;
    } finally {
      if(remember == true) {
        if(token == null) {
          status = false;
        } else {
          var currentDate = DateTime.fromMillisecondsSinceEpoch(DateTime.now().millisecondsSinceEpoch);
          var expDate = DateTime.parse(await getTokenExpiration());

          if(!currentDate.isBefore(expDate)){
            status = false;
          } else {
            if(getUser() != null) {
              status = true;
            } else {
              await const FlutterSecureStorage().delete(key: "access_token");
              await const FlutterSecureStorage().delete(key: "token_expiration");
              status = false;
            }
          }
        }
      } else {
        status = false;
      }
    }
    return status;
  }
}
