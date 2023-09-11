import 'dart:convert';

import 'package:castar_app/Model/user_class.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static Future<void> rememberUserPreferences(User userData) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String userJsonData = jsonEncode(userData.toJoson());

    await preferences.setString("currentUser", userJsonData);
    await preferences.setBool("user", true);
  }

  static Future<User?> readUserPreferences() async {
    User? currentUser;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userData = preferences.getString("currentUser");

    if (userData != null) {
      Map<String, dynamic> currentUserData = jsonDecode(userData);
      currentUser = User.fromJson(currentUserData);
    }

    return currentUser;
  }

  static Future<void> logOutUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setString("currentUser", "");
    await preferences.setBool("user", false);
  }
}
