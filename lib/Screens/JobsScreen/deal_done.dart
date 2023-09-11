// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class DealDoneScreen extends StatefulWidget {
  const DealDoneScreen({super.key});

  @override
  State<DealDoneScreen> createState() => _DealDoneScreenState();
}

class _DealDoneScreenState extends State<DealDoneScreen> {
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
                        color: const Color(0xFFe3b53c).withOpacity(0.2),
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
          SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.60,
                        child: Container(
                          width: 92,
                          height: 92,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFFE3B43C), Color(0x00E3823C)],
                            ),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 0.50, color: Color(0xFFE3B43C)),
                            ),
                          ),
                        ),
                      ),
                      SvgPicture.asset("assets/images/tick.svg")
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    "Congratulations!",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xffe3b53c)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Your deal successfully done",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: secondaryColor),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/bottomNavBar", (route) => false);
                    },
                    child: Container(
                      width: size.width,
                      height: 48,
                      margin: EdgeInsets.only(left: 18, right: 18),
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
                          "Ok",
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
