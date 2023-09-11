// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          getGradients(),
          SingleChildScrollView(
            child: SizedBox(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 54,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: secondaryColor.withOpacity(1),
                            size: 24,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "No",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: secondaryColor.withOpacity(1)),
                            ),
                            Text(
                              "tification",
                              style: TextStyle(
                                  fontFamily: "Montserrat Alternates",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: secondaryColor.withOpacity(1)),
                            ),
                          ],
                        ),
                        Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, bottom: 16),
                    child: Text(
                      "New",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xfff0b899).withOpacity(0.6)),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topLeft,
                        colors: [
                          Color(0xe3b53c33).withOpacity(0.2),
                          Color(0xfff0b833).withOpacity(0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/circle.svg"),
                            Image.asset("assets/images/arrow.png")
                          ],
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sunstra Manee sent you message",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfffff0b8).withOpacity(1)),
                            ),
                            Text(
                              "You have received new message.",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.6)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 0.6,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color(0xFF040415).withOpacity(1),
                          Color(0xFFe3b53c).withOpacity(1)
                        ])),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 80,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topLeft,
                        colors: [
                          Color(0xe3b53c33).withOpacity(0.2),
                          Color(0xfff0b833).withOpacity(0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/circle.svg"),
                            Image.asset("assets/images/arrow.png")
                          ],
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfffff0b8).withOpacity(1)),
                            ),
                            Text(
                              "Your password successfully changed.",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.6)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 0.6,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color(0xFF040415).withOpacity(1),
                          Color(0xFFe3b53c).withOpacity(1)
                        ])),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, bottom: 16),
                    child: Text(
                      "New",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xfff0b899).withOpacity(0.6)),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topLeft,
                        colors: [
                          Color(0xe3b53c33).withOpacity(0.2),
                          Color(0xfff0b833).withOpacity(0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/circle.svg"),
                            Image.asset("assets/images/arrow.png")
                          ],
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sunstra Manee sent you message",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfffff0b8).withOpacity(1)),
                            ),
                            Text(
                              "You have received new message.",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.6)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 0.6,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color(0xFF040415).withOpacity(1),
                          Color(0xFFe3b53c).withOpacity(1)
                        ])),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    height: 80,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topLeft,
                        colors: [
                          Color(0xe3b53c33).withOpacity(0.2),
                          Color(0xfff0b833).withOpacity(0.2),
                        ],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 18,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/circle.svg"),
                            Image.asset("assets/images/arrow.png")
                          ],
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfffff0b8).withOpacity(1)),
                            ),
                            Text(
                              "Your password successfully changed.",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(0.6)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 0.6,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Color(0xFF040415).withOpacity(1),
                          Color(0xFFe3b53c).withOpacity(1)
                        ])),
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
