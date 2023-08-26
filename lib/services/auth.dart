import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:mager_app/models/user_model.dart';

class AuthService {
  static Future<Map<String, dynamic>> custJson() async {
    final jsonString = await rootBundle.loadString('assets/dummy/customer.json');
    return json.decode(jsonString);
  }

  Future<UserModel?> loginAction({String? email, String? password}) async {
    try {
      if (email == 'customer1@example.com') {
        final jsonRes = await custJson();

        if (jsonRes['status'] == 200) {
          return UserModel.fromJson(jsonRes);
        }
      }
    } catch (e) {
      print('ERR -> $e');
    }
    return null;
  }
}