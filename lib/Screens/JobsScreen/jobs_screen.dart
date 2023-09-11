// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:castar_app/constants.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  bool showPopUp = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          getGradients(),
          Container(
            padding: EdgeInsets.only(left: 18, right: 18),
            width: size.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 54,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/bottomNavBar", (route) => false);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: secondaryColor.withOpacity(1),
                              size: 24,
                            ),
                          ),
                          Text(
                            "Jobs",
                            style: TextStyle(
                                fontFamily: "Montserrat Alternates",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: secondaryColor.withOpacity(1)),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                showPopUp
                                    ? showPopUp = false
                                    : showPopUp = true;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset("assets/images/dots.svg"),
                                SvgPicture.asset(
                                    "assets/images/dots circle.svg"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              width: size.width,
                              height: 268,
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.only(bottom: 16),
                              decoration: ShapeDecoration(
                                gradient: RadialGradient(
                                  radius: 0,
                                  colors: [
                                    Color(0xe3b53c33).withOpacity(0.1),
                                    Color(0xfff0b833).withOpacity(0.1)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: BorderSide(
                                      color: Color(0xffe3b53c).withOpacity(0.2),
                                      width: 0.6,
                                    )),
                                // shadows: [
                                //   BoxShadow(
                                //     color: Color(0x19F5D786),
                                //     blurRadius: 20,
                                //     offset: Offset(0, 4),
                                //     spreadRadius: 0,
                                //   )
                                // ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/images/image circle.svg",
                                            width: 54,
                                            height: 54,
                                          ),
                                          Image.asset(
                                            "assets/images/person 2.png",
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          getGradientTitle("Company Name"),
                                          Text(
                                            "Job Type : Cinema",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                                color: Color(0xfffff0b8)),
                                          ),
                                        ],
                                      ),
                                      ShaderMask(
                                          shaderCallback: (Rect bounds) {
                                            return LinearGradient(
                                              colors: [
                                                Color(0xFFE3B53C),
                                                Color(0xFFFAF2C1),
                                                Color(0xFFE3B53C),
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ).createShader(bounds);
                                          },
                                          child: Text(
                                            "View Details",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: Colors.white,
                                                decoration:
                                                    TextDecoration.underline,
                                                height: 2),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  DottedLine(
                                    dashLength: 4,
                                    dashGapLength: 4,
                                    lineThickness: 1,
                                    dashColor: Color(0xFFfff0b8),
                                    dashGapColor: Colors.transparent,
                                    direction: Axis.horizontal,
                                    lineLength: size.width * 0.83,
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/images/email.svg"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "xyz089@gmail.com",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xfffff0b8)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/images/phone.svg"),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "xyz089@gmail.com",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color(0xfffff0b8)),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet consectetur. Orci semper turpis viverra sed in nunc et.",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 10,
                                        color: Color(0xffffffbf)),
                                  ),
                                  SizedBox(
                                    height: 23,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "/jobDetailScreen");
                                    },
                                    child: Container(
                                      width: size.width,
                                      height: 48,
                                      decoration: ShapeDecoration(
                                        gradient: index % 2 == 0
                                            ? LinearGradient(
                                                begin: Alignment(1.00, -0.04),
                                                end: Alignment(-1, 0.04),
                                                colors: [
                                                  Color(0xFFFAF2C1),
                                                  Color(0xFFE3B43C),
                                                  Color(0xFFE3B43C)
                                                ],
                                              )
                                            : null,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 0.50,
                                              color: Color(0xFFFFF0B8)),
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                          "Send Request",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: index % 2 == 0
                                                  ? Color(0xff040415)
                                                      .withOpacity(1)
                                                  : Color(0xfffff0b8)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
                showPopUp
                    ? Positioned(
                        right: 0,
                        top: 93,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/requestAccepted");
                          },
                          child: Container(
                            width: 163,
                            height: 49,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFAF2C1),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0x14FFF0B8)),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Job Request",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
