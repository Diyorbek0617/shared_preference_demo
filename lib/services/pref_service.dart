import 'dart:convert';

import 'package:shared_preference_demo/model/account_model.dart';
import 'package:shared_preference_demo/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
// shared preference class
class Prefs{

  // for name
  static storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  static Future<Object?> loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get("name");
  }

  static Future<bool> removeName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // for user
  static storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic stringUser  = jsonEncode(user);
    prefs.setString('user', stringUser);
  }

  static Future<User> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic stringUser = prefs.getString("user");
    if(stringUser == null || stringUser.isEmpty)  null ;

    dynamic map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
  // for account
  static storeAccount(Account account) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic stringAccount  = jsonEncode(account);
    prefs.setString('account', stringAccount);
  }

  static Future<User> loadAccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dynamic stringAccount = prefs.getString("account");
    if(stringAccount == null || stringAccount.isEmpty)  null ;

    dynamic map = jsonDecode(stringAccount);
    return User.fromJson(map);
  }

  static Future<bool> removeAccount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("account");
  }
}