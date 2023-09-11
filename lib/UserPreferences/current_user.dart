import 'package:castar_app/Model/user_class.dart';
import 'package:castar_app/UserPreferences/user_preferences.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController {
  Rx<User> currentUserInfo = User(0, "", "", "", "", "", DateTime.now()).obs;

  User get user => currentUserInfo.value;

  getUserData() async {
    User? currentUserData = await UserPreferences.readUserPreferences();
    currentUserInfo.value = currentUserData!;
  }
}
