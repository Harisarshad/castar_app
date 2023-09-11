class ConnectionAPI {
  static const hostConnect = "http://192.168.10.14/castar_app";
  static const connectUser = "$hostConnect/user/auth";

  static const validateEmail = "$connectUser/validate_email.php";
  static const signUpUser = "$connectUser/signup.php";
  static const loginUser = "$connectUser/login.php";
  static const deleteUser = "$connectUser/delete_user.php";
}
