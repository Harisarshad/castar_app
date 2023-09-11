// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_build_context_synchronously

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () async {
      await isUserLoggedIn()
          ? Navigator.pushNamedAndRemoveUntil(
              context, "/bottomNavBar", (route) => false)
          : Navigator.pushNamedAndRemoveUntil(
              context, "/roleScreen", (route) => false);
    });
  }

  isUserLoggedIn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isUserLoggedIn = preferences.getBool("user") ?? false;

    return isUserLoggedIn;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            left: -10,
            child: Container(
              width: 102,
              height: 102,
              decoration: ShapeDecoration(
                  // color: Color(0xFFE3B43C).withOpacity(0.05),
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                        color: Color(0xFFE3B43C).withOpacity(0.099),
                        blurRadius: 102,
                        spreadRadius: 102),
                  ]),
            ),
          ),
          Positioned(
            left: 247,
            top: 659,
            child: Container(
              width: 80,
              height: 80,
              decoration: ShapeDecoration(
                  // color: Color(0xFFE3B43C).withOpacity(0.05),
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                        color: Color(0xFFE3B43C).withOpacity(0.08),
                        blurRadius: 80,
                        spreadRadius: 80),
                  ]),
            ),
          ),
          SizedBox(
            height: size.height,
            width: size.width,
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            //   // stops: [0.3, 0.7],
            //   colors: [
            //     Color(0xFFE3B53C),
            //     bgColor,
            //     Color(0xFFE3B53C),
            //   ],
            // )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                getLogo(66, 66),
                SizedBox(
                  height: 70,
                  child: getTitle(56),
                ),
                getSubTitle(12)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
