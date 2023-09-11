// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  bool showPass = false;
  bool showConfirmPass = false;

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
                              "Reset Password",
                              style: TextStyle(
                                  fontFamily: 'Montserrat Alternates',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffe3b53c).withOpacity(1)),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Please reset your password by entering a new password.",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.7)),
                            ),
                            SizedBox(
                              height: 27,
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
                                    fillColor:
                                        Color(0xfffaf2c1).withOpacity(0.0),
                                    labelText: "Old assword",
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
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Icon(
                                          showPass
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: 19,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.7),
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
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.7)),
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
                                controller: confirmPassController,
                                keyboardType: TextInputType.visiblePassword,
                                cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                                obscureText: showConfirmPass ? false : true,
                                style: TextStyle(
                                  color: Color(0xfffff0b8).withOpacity(0.7),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                    fillColor:
                                        Color(0xfffaf2c1).withOpacity(0.0),
                                    labelText: "New Password",
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        setState(() {
                                          showConfirmPass
                                              ? showConfirmPass = false
                                              : showConfirmPass = true;
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Icon(
                                          showConfirmPass
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          size: 19,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.7),
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
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.7)),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: Color(0xfffff0b8)
                                                .withOpacity(0.2)))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 18, 39),
                      child: InkWell(
                        onTap: () {},
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
                              "Reset",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff040415).withOpacity(1)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
