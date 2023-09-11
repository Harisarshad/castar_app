// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import '../../constants.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key, required this.email});

  final String email;

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  int secondsRemaining = 30;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (secondsRemaining > 0) {
          secondsRemaining--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
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
                              "OTP Verification",
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
                              "Please enter one time password (OTP) that is sent to ${widget.email}",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.7)),
                            ),
                            SizedBox(
                              height: 27,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 51,
                                  width: 59,
                                  child: TextField(
                                    cursorColor:
                                        Color(0xfffff0b8).withOpacity(0.2),
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    style: TextStyle(
                                      color: Color(0xfffff0b8).withOpacity(0.7),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        counterText: "",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xfffff0b8)
                                                  .withOpacity(1)),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xfffff0b8)
                                                    .withOpacity(1)))),
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                SizedBox(
                                  height: 51,
                                  width: 59,
                                  child: TextField(
                                    cursorColor:
                                        Color(0xfffff0b8).withOpacity(0.2),
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    style: TextStyle(
                                      color: Color(0xfffff0b8).withOpacity(0.7),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        counterText: "",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xfffff0b8)
                                                  .withOpacity(1)),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xfffff0b8)
                                                    .withOpacity(1)))),
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                SizedBox(
                                  height: 51,
                                  width: 59,
                                  child: TextField(
                                    cursorColor:
                                        Color(0xfffff0b8).withOpacity(0.2),
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    style: TextStyle(
                                      color: Color(0xfffff0b8).withOpacity(0.7),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        counterText: "",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xfffff0b8)
                                                  .withOpacity(1)),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xfffff0b8)
                                                    .withOpacity(1)))),
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                SizedBox(
                                  height: 51,
                                  width: 59,
                                  child: TextField(
                                    cursorColor:
                                        Color(0xfffff0b8).withOpacity(0.2),
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    style: TextStyle(
                                      color: Color(0xfffff0b8).withOpacity(0.7),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                        counterText: "",
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xfffff0b8)
                                                  .withOpacity(1)),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xfffff0b8)
                                                    .withOpacity(1)))),
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 29,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Resend OTP in ",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.7)),
                                ),
                                Text(
                                  formatTime(secondsRemaining),
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffe3b53c).withOpacity(1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 18, 39),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/resetPasswordScreen");
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
                              "Submit",
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
