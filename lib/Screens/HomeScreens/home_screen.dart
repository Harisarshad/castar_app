// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            child: Column(
              children: [
                SizedBox(
                  height: 54,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "assets/images/menu.svg",
                        height: 16,
                        width: 18,
                      ),
                      Text(
                        "HOME",
                        style: TextStyle(
                            fontFamily: "Montserrat Alternates",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor.withOpacity(1)),
                      ),
                      Text(
                        "View Ad",
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffe3b53c).withOpacity(1)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 44,
                        decoration: BoxDecoration(
                          // color: Colors.yellow,
                          borderRadius: BorderRadius.circular(37),
                          gradient: RadialGradient(colors: [
                            Color(0xe3b53c33).withOpacity(0.2),
                            Color(0xfff0b833).withOpacity(0.2),
                          ], radius: 0),
                          // boxShadow: [
                          //   BoxShadow(
                          //       color: Color(0xf6db8c1a),
                          //       blurRadius: 4,
                          //       spreadRadius: 0,
                          //       offset: Offset(0, -2))
                          // ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            SvgPicture.asset(
                              "assets/images/search.svg",
                              height: 19.47,
                              width: 19.47,
                            ),
                            SizedBox(
                              width: 13.62,
                            ),
                            Text(
                              "Search by criteria....",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfffff0b8).withOpacity(1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    SvgPicture.asset(
                      "assets/images/filter.svg",
                      height: 13,
                      width: 19.5,
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 138,
                      margin: EdgeInsets.only(top: 24),
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.98, -0.20),
                          end: Alignment(-0.98, 0.2),
                          colors: [
                            Color(0xFFFFF0B8),
                            Color(0xFFE3B43C),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 68,
                            height: 68,
                            margin: EdgeInsets.only(top: 15, left: 6),
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Colors.white.withOpacity(0.5),
                                  Colors.white.withOpacity(0)
                                ],
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                          Container(
                            width: 122,
                            height: 122,
                            margin: EdgeInsets.only(top: 8, right: 16),
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.00, -1.00),
                                end: Alignment(0, 1),
                                colors: [
                                  Colors.white.withOpacity(0.72),
                                  Colors.white.withOpacity(0)
                                ],
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: 151,
                      margin: EdgeInsets.only(top: 11),
                      color: Colors.transparent,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 33, top: 48),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 186,
                                  child: Text(
                                    "Find the best producer",
                                    style: TextStyle(
                                        fontFamily: "Montserrat Alternates",
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color(0xff040415).withOpacity(1)),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                SvgPicture.asset(
                                  "assets/images/arrow.svg",
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 32),
                            child: Image.asset(
                              "assets/images/person.png",
                              height: 151,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Top Producers",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfffff0b5).withOpacity(1)),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xfffff0b5).withOpacity(1)),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 16,
                // ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Stack(
                          alignment: Alignment.topRight,
                          children: [
                            ClipRect(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 14),
                                width: size.width,
                                height: 85,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    // border: Border(
                                    //     right: BorderSide(
                                    //   color: Color(0xf5d7861a),
                                    //   width: 0.6,
                                    // )),
                                    gradient: RadialGradient(colors: [
                                      Color(0xe3b53c33).withOpacity(0.2),
                                      Color(0xfff0b833).withOpacity(0.2)
                                    ], radius: 0)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
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
                                    SizedBox(
                                      width: 23,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        getGradientTitle("Company Name"),
                                        Text(
                                          "Job Type : Cinema",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              color: Color(0xfffff0b8)),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/images/triangle.svg",
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
