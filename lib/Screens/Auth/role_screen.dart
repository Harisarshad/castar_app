// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';

class RoleScreen extends StatefulWidget {
  const RoleScreen({super.key});

  @override
  State<RoleScreen> createState() => _RoleScreenState();
}

class _RoleScreenState extends State<RoleScreen> {
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
                              "Select your role",
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
                              "To continue please select your role",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.7)),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectOpt = 1;
                                });
                              },
                              child: Container(
                                width: size.width,
                                height: 89,
                                decoration: ShapeDecoration(
                                  color: Color(0xfffaf2c1).withOpacity(0.0),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1,
                                        color: selectOpt == 1
                                            ? Color(0xfffff0b8).withOpacity(1)
                                            : Color(0xfffff0b8)
                                                .withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0xFFFFF0B8).withOpacity(0.0),
                                      blurRadius: 0,
                                      offset: Offset(1, 1),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/producer.png",
                                      height: 34,
                                      width: 34,
                                    ),
                                    Text(
                                      "Producer",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: selectOpt == 1
                                              ? Color(0xfffff0b8).withOpacity(1)
                                              : Color(0xff988f76)
                                                  .withOpacity(1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectOpt = 2;
                                });
                              },
                              child: Container(
                                width: size.width,
                                height: 89,
                                decoration: ShapeDecoration(
                                  color: Color(0xfffaf2c1).withOpacity(0.0),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1,
                                        color: selectOpt == 2
                                            ? Color(0xfffff0b8).withOpacity(1)
                                            : Color(0xfffff0b8)
                                                .withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0xFFFFF0B8).withOpacity(0.0),
                                      blurRadius: 0,
                                      offset: Offset(1, 1),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/candidate.png",
                                      height: 34,
                                      width: 34,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Candidate",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: selectOpt == 2
                                              ? Color(0xfffff0b8).withOpacity(1)
                                              : Color(0xff988f76)
                                                  .withOpacity(1)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 150,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/loginScreen");
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
                                        color:
                                            Color(0xff040415).withOpacity(1)),
                                  ),
                                ),
                              ),
                            )
                          ],
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
