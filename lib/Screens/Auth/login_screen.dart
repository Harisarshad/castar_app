// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'dart:convert';
import 'package:castar_app/Screens/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:castar_app/UserPreferences/user_preferences.dart';
import 'package:castar_app/Database/connection.dart';
import 'package:castar_app/Model/user_class.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool showPass = false;

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
                  shape: const OvalBorder(),
                  shadows: [
                    BoxShadow(
                        color: const Color(0xFFE3B43C).withOpacity(0.099),
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
                  shape: const OvalBorder(),
                  shadows: [
                    BoxShadow(
                        color: const Color(0xFFE3B43C).withOpacity(0.08),
                        blurRadius: 80,
                        spreadRadius: 80),
                  ]),
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  getLogo(52, 52),
                  SizedBox(
                    height: 11,
                  ),
                  SizedBox(height: 37, child: getTitle(30)),
                  getSubTitle(5.47),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xfffff0b8).withOpacity(0.1),
                              Color(0xfffff0b8).withOpacity(0.0)
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: 'Montserrat Alternates',
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffe3b53c).withOpacity(1)),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          SizedBox(
                            width: 315,
                            child: Text(
                              "Fill your details or continue login with social media.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.7)),
                            ),
                          ),
                          SizedBox(
                            height: 27,
                          ),
                          SizedBox(
                            height: 51,
                            child: TextField(
                              controller: emailController,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                              style: TextStyle(
                                color: Color(0xfffff0b8).withOpacity(0.7),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                                  labelText: "Email",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.5)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color(0xfffff0b8).withOpacity(0.7)),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.2)))),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 51,
                            child: TextField(
                              controller: passController,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                              obscureText: showPass ? false : true,
                              style: TextStyle(
                                color: Color(0xfffff0b8).withOpacity(0.7),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                                  labelText: "Password",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showPass
                                            ? showPass = false
                                            : showPass = true;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Icon(
                                        showPass
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        size: 19,
                                        color:
                                            Color(0xfffff0b8).withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.5)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color(0xfffff0b8).withOpacity(0.7)),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.2)))),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/forgotPassScreen");
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffe3b53c).withOpacity(1)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          InkWell(
                            onTap: () {
                              if (emailController.text.trim().isEmpty ||
                                  passController.text.trim().isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Please enter all field.");
                              } else {
                                if (EmailValidator.validate(
                                    emailController.text.trim())) {
                                  loginUser();
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "Please enter correct email.");
                                }
                              }
                            },
                            child: Container(
                              width: size.width,
                              height: 48,
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(1.00, -0.04),
                                  end: Alignment(-1, 0.04),
                                  colors: [
                                    Color(0xFFFAF2C1),
                                    Color(0xFFE3B43C),
                                    Color(0xFFE3B43C)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFFFF0B8)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff040415).withOpacity(1)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/bottomNavBar", (route) => false);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "New User? ",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.8)),
                                ),
                                Text(
                                  "Create Account",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffe3b53c).withOpacity(1)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 43,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.3))),
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "Or login with",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xfffff0b8).withOpacity(1)),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.3))),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 51,
                                  decoration: ShapeDecoration(
                                    color: Color(0x19FFF0B8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/google.png",
                                        height: 19,
                                        width: 19,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffffffff)
                                                .withOpacity(1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Container(
                                  height: 51,
                                  decoration: ShapeDecoration(
                                    color: Color(0x19FFF0B8),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/facebook.png",
                                        height: 19,
                                        width: 19,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffffffff)
                                                .withOpacity(1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       height: 51,
                          //       decoration: BoxDecoration(
                          //           shape: BoxShape.rectangle,
                          //           borderRadius: BorderRadius.circular(8)),
                          //       child: Row(
                          //         children: [],
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  loginUser() async {
    try {
      var result = await http.post(Uri.parse(ConnectionAPI.loginUser), body: {
        "email": emailController.text.trim(),
        "password": passController.text.trim(),
      });

      if (result.statusCode == 200) {
        var resultBody = jsonDecode(result.body);

        if (resultBody["success"]) {
          Fluttertoast.showToast(msg: "Successfully Signed In.");
          User userData = User.fromJson(resultBody["userData"]);

          await UserPreferences.rememberUserPreferences(userData);

          Navigator.pushAndRemoveUntil(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return BottomNavBar(
                  tab: 0,
                );
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = Offset(1.0, 0.0);
                const end = Offset.zero;
                const curve = Curves.easeInOut;

                var tween = Tween(begin: begin, end: end).chain(
                  CurveTween(curve: curve),
                );
                var offsetAnimation = animation.drive(tween);
                return SlideTransition(position: offsetAnimation, child: child);
              },
            ),
            (route) => false,
          );

          // Navigator.pushNamedAndRemoveUntil(
          //     context, "/bottomNavBar", (route) => false);
        } else {
          Fluttertoast.showToast(msg: "Incorrect email or password.");
        }
      } else {
        Fluttertoast.showToast(msg: "Error Occured, Try Again");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
