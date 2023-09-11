// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';

class CreditsScreen extends StatefulWidget {
  const CreditsScreen({super.key});

  @override
  State<CreditsScreen> createState() => _CreditsScreenState();
}

class _CreditsScreenState extends State<CreditsScreen> {
  int selectOpt = 0;

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
            left: 294,
            top: 143,
            child: Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                  // color: Color(0xFFE3B43C).withOpacity(0.05),
                  shape: const OvalBorder(),
                  shadows: [
                    BoxShadow(
                        color: const Color(0xFFe3b53c).withOpacity(0.099),
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
                        color: const Color(0xFFE3B43C).withOpacity(0.1),
                        blurRadius: 80,
                        spreadRadius: 80),
                  ]),
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 86,
                  ),
                  Text(
                    "Buy our credits",
                    style: TextStyle(
                        fontFamily: 'Montserrat Alternates',
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xfffff0b8).withOpacity(1)),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectOpt = 1;
                      });
                    },
                    child: Container(
                      height: 153,
                      width: size.width,
                      padding: EdgeInsets.only(left: 18, right: 18),
                      decoration: BoxDecoration(
                          color: Color(0xFFfaf2c1).withOpacity(0.08),
                          borderRadius: BorderRadius.circular(8),
                          border: Border(
                            top: BorderSide(
                                width: 3,
                                color: selectOpt == 1
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            bottom: BorderSide(
                                width: 1,
                                color: selectOpt == 1
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            left: BorderSide(
                                width: 1,
                                color: selectOpt == 1
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            right: BorderSide(
                                width: 1,
                                color: selectOpt == 1
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Our Plan",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffff0b8)
                                            .withOpacity(1)),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Container(
                                    width: 56,
                                    height: 19,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Color(0xFFE3B43C),
                                          Color(0xFFFAF2C1),
                                          Color(0xFFE3B43C)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Monthly',
                                        style: TextStyle(
                                          color: Color(0xFF261D13),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Text(
                                '7.99€ / Month',
                                style: TextStyle(
                                  color: Color(0xFFfff0b8).withOpacity(1),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                '30 credits',
                                style: TextStyle(
                                  color: Color(0xFFfff0b8).withOpacity(0.6),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 19),
                                  child: Opacity(
                                    opacity: 0.32,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: ShapeDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0, 0),
                                          end: Alignment(1.5, 1),
                                          colors: [
                                            Color(0xFF040415),
                                            Color(0xFFE3B43C)
                                          ],
                                        ),
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 0.50,
                                              color: Color(0xFFE3B43C)),
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/user.png",
                                        // height: 36,
                                        // width: 36,
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectOpt = 2;
                      });
                    },
                    child: Container(
                      height: 153,
                      width: size.width,
                      padding: EdgeInsets.only(left: 18, right: 18),
                      decoration: BoxDecoration(
                          color: Color(0xFFfaf2c1).withOpacity(0.08),
                          borderRadius: BorderRadius.circular(8),
                          border: Border(
                            top: BorderSide(
                                width: 3,
                                color: selectOpt == 2
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            bottom: BorderSide(
                                width: 1,
                                color: selectOpt == 2
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            left: BorderSide(
                                width: 1,
                                color: selectOpt == 2
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            right: BorderSide(
                                width: 1,
                                color: selectOpt == 2
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Our Plan",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xfffff0b8)
                                            .withOpacity(1)),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Container(
                                    width: 56,
                                    height: 19,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Color(0xFFE3B43C),
                                          Color(0xFFFAF2C1),
                                          Color(0xFFE3B43C)
                                        ],
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Year',
                                        style: TextStyle(
                                          color: Color(0xFF261D13),
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Text(
                                '79.90€ Year',
                                style: TextStyle(
                                  color: Color(0xFFfff0b8).withOpacity(1),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                '400 credits',
                                style: TextStyle(
                                  color: Color(0xFFfff0b8).withOpacity(0.6),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 19),
                                  child: Opacity(
                                    opacity: 0.32,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: ShapeDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0, 0),
                                          end: Alignment(1.5, 1),
                                          colors: [
                                            Color(0xFF040415),
                                            Color(0xFFE3B43C)
                                          ],
                                        ),
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 0.50,
                                              color: Color(0xFFE3B43C)),
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/user.png",
                                        // height: 36,
                                        // width: 36,
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectOpt = 3;
                      });
                    },
                    child: Container(
                      height: 153,
                      width: size.width,
                      padding: EdgeInsets.only(left: 18, right: 18),
                      decoration: BoxDecoration(
                          color: Color(0xFFfaf2c1).withOpacity(0.08),
                          borderRadius: BorderRadius.circular(8),
                          border: Border(
                            top: BorderSide(
                                width: 3,
                                color: selectOpt == 3
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            bottom: BorderSide(
                                width: 1,
                                color: selectOpt == 3
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            left: BorderSide(
                                width: 1,
                                color: selectOpt == 3
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                            right: BorderSide(
                                width: 1,
                                color: selectOpt == 3
                                    ? Color(0xfffff0b8).withOpacity(1)
                                    : Color(0xfffff0b8).withOpacity(0.08)),
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Our Plan",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color(0xfffff0b8).withOpacity(1)),
                              ),
                              SizedBox(
                                height: 23,
                              ),
                              Text(
                                '9.99€',
                                style: TextStyle(
                                  color: Color(0xFFfff0b8).withOpacity(1),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                '30 credits',
                                style: TextStyle(
                                  color: Color(0xFFfff0b8).withOpacity(0.6),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 19),
                                  child: Opacity(
                                    opacity: 0.32,
                                    child: Container(
                                      width: 60,
                                      height: 60,
                                      decoration: ShapeDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0, 0),
                                          end: Alignment(1.5, 1),
                                          colors: [
                                            Color(0xFF040415),
                                            Color(0xFFE3B43C)
                                          ],
                                        ),
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 0.50,
                                              color: Color(0xFFE3B43C)),
                                        ),
                                      ),
                                      child: Image.asset(
                                        "assets/images/user.png",
                                        // height: 36,
                                        // width: 36,
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/paymentScreen");
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
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFFFF0B8)),
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
                          "Continue",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff040415).withOpacity(1)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
