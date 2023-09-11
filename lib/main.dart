import 'package:castar_app/Screens/Auth/forgot_password_screen.dart';
import 'package:castar_app/Screens/Auth/login_screen.dart';
import 'package:castar_app/Screens/Auth/reset_password.dart';
import 'package:castar_app/Screens/Auth/role_screen.dart';
import 'package:castar_app/Screens/Auth/signup_screen.dart';
import 'package:castar_app/Screens/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:castar_app/Screens/JobsScreen/chat_screen.dart';
import 'package:castar_app/Screens/JobsScreen/contract_screen.dart';
import 'package:castar_app/Screens/JobsScreen/deal_done.dart';
import 'package:castar_app/Screens/JobsScreen/detail_screen.dart';
import 'package:castar_app/Screens/JobsScreen/map_location.dart';
import 'package:castar_app/Screens/JobsScreen/request_accepted.dart';
import 'package:castar_app/Screens/ProfileScreens/about_screen.dart';
import 'package:castar_app/Screens/ProfileScreens/change_password.dart';
import 'package:castar_app/Screens/ProfileScreens/contact_screen.dart';
import 'package:castar_app/Screens/ProfileScreens/edit_profile.dart';
import 'package:castar_app/Screens/ProfileScreens/notification_setting.dart';
import 'package:castar_app/Screens/SplashScreen/splash_screen.dart';
import 'package:castar_app/Screens/SubscriptionScreens/add_card_screen.dart';
import 'package:castar_app/Screens/SubscriptionScreens/creadits_screen.dart';
import 'package:castar_app/Screens/SubscriptionScreens/payment_screen.dart';
import 'package:castar_app/Screens/SubscriptionScreens/payment_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Castar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/splashScreen": (context) => const SplashScreen(),
        "/roleScreen": (context) => const RoleScreen(),
        "/loginScreen": (context) => const LoginScreen(),
        "/forgotPassScreen": (context) => const ForgotPassScreen(),
        "/resetPasswordScreen": (context) => const ResetPasswordScreen(),
        "/signUpScreen": (context) => const SignUpScreen(),
        "/creaditScreen": (context) => const CreditsScreen(),
        "/paymentScreen": (context) => const PaymentScreen(),
        "/addCardScreen": (context) => const AddCardScreen(),
        "/paymentSuccessScreen": (context) => const PaymentSuccessScreen(),
        "/bottomNavBar": (context) => const BottomNavBar(
              tab: 0,
            ),
        "/jobDetailScreen": (context) => const JobDetailScreen(),
        "/locationScreen": (context) => const MapLocation(),
        "/requestAccepted": (context) => const RequestAccepted(),
        "/chatScreen": (context) => const ChatScreen(),
        "/dealDoneScreen": (context) => const DealDoneScreen(),
        "/contractScreen": (context) => const ContractScreen(),
        "/aboutScreen": (context) => const AboutScreen(),
        "/changePasswordScreen": (context) => const ChangePassword(),
        "/notificationSettingScreen": (context) =>
            const NotificationSettingScreen(),
        "/contactScreen": (context) => const ContactScreen(),
        "/editProfileScreen": (context) => const EditPeofileScreen()
      },
      initialRoute: "/splashScreen",
    );
  }
}
