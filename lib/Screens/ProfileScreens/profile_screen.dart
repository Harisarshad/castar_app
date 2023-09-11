// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'dart:convert';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:castar_app/UserPreferences/user_preferences.dart';
import 'package:castar_app/constants.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../Database/connection.dart';
import '../../UserPreferences/current_user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  CurrentUser currentUser = Get.put(CurrentUser());

  String desc =
      "Lorem ipsum dolor sit amet consectetur. Nunc nisl sem augue at consequat odio mi volutpat in. Adipiscing risus porttitor ac in suspendisse non pellentesque rhoncus amet. In volutpat enim vel duis viverra non.";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: 2,
            child: Container(
              width: size.width,
              height: 196,
              decoration: BoxDecoration(
                  color: Color(0xffe3b53c),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
          ),
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
                        color: const Color(0xFF261d13).withOpacity(0.15),
                        blurRadius: size.width,
                        spreadRadius: size.width - 150),
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18, right: 18),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff040415),
                          size: 24,
                        ),
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontFamily: "Montserrat Alternates",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff040415)),
                      ),
                      Container()
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 175,
                    ),
                    Container(
                      width: size.width,
                      height: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width,
                            height: 147,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1, 2),
                                end: Alignment(-0.6, -1),
                                colors: [
                                  Color(0xFFE3B43C),
                                  Color(0xFF040415),
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.30, color: Color(0xFF040415)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "/editProfileScreen");
                                      },
                                      child: Container(
                                        width: 28,
                                        height: 28,
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            shape: BoxShape.circle),
                                        child: Center(
                                          child: SvgPicture.asset(
                                              "assets/images/edit.svg"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  "${currentUser.user.firstName} ${currentUser.user.lastName}",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffe3b53c)),
                                ),
                                Text(
                                  currentUser.user.email,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: secondaryColor.withOpacity(0.7)),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: 175,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 96,
                            height: 96,
                            decoration: BoxDecoration(
                              color: Color(0xffe3b53c),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              "assets/images/profile 2.png",
                              width: 84,
                              height: 84,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: LinearGradient(colors: [
                                Color(0xffe3b53c).withOpacity(0.2),
                                Color(0xffe3b53c).withOpacity(0.06),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: ShaderMask(
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
                                    "Other",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DottedLine(
                                dashLength: 4,
                                dashGapLength: 4,
                                lineThickness: 1,
                                dashColor: secondaryColor.withOpacity(0.2),
                                dashGapColor: Colors.transparent,
                                direction: Axis.horizontal,
                                lineLength: size.width * 0.91,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, bottom: 25, top: 12),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "DOB",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                              color: secondaryColor
                                                  .withOpacity(0.5)),
                                        ),
                                        Text(
                                          "08/07/1999",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                              color: secondaryColor
                                                  .withOpacity(1)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 44,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Age",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                              color: secondaryColor
                                                  .withOpacity(0.5)),
                                        ),
                                        Text(
                                          "24",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                              color: secondaryColor
                                                  .withOpacity(1)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Job Type",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                              color: secondaryColor
                                                  .withOpacity(0.5)),
                                        ),
                                        Text(
                                          "Model",
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              decoration: TextDecoration.none,
                                              color: secondaryColor
                                                  .withOpacity(1)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 44,
                                    ),
                                  ],
                                ),
                              ),
                              DottedLine(
                                dashLength: 4,
                                dashGapLength: 4,
                                lineThickness: 1,
                                dashColor: secondaryColor.withOpacity(0.2),
                                dashGapColor: Colors.transparent,
                                direction: Axis.horizontal,
                                lineLength: size.width * 0.91,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 9),
                                child: ShaderMask(
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
                                    "Bio",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(18, 0, 9, 14),
                                child: Text(
                                  desc,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      decoration: TextDecoration.none,
                                      color: secondaryColor.withOpacity(0.7)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: LinearGradient(colors: [
                                Color(0xffe3b53c).withOpacity(0.2),
                                Color(0xffe3b53c).withOpacity(0.06),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: ShaderMask(
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
                                    "Measurements",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              DottedLine(
                                dashLength: 4,
                                dashGapLength: 4,
                                lineThickness: 1,
                                dashColor: secondaryColor.withOpacity(0.2),
                                dashGapColor: Colors.transparent,
                                direction: Axis.horizontal,
                                lineLength: size.width * 0.91,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 14, bottom: 18),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Skin color",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "Fair",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Show Size",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "34",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Height",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "6.5inch",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hair size",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "Long",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Show size",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "34",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Chest",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "30",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 57,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Waist",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "34",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hip",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "38",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Height",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "6.5inch",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 45,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Weight",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "60",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 47,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Cosmetic surgery",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(0.5)),
                                            ),
                                            Text(
                                              "No",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: secondaryColor
                                                      .withOpacity(1)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              gradient: LinearGradient(colors: [
                                Color(0xffe3b53c).withOpacity(0.2),
                                Color(0xffe3b53c).withOpacity(0.06),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 16),
                                child: ShaderMask(
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
                                    "Address",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DottedLine(
                                dashLength: 4,
                                dashGapLength: 4,
                                lineThickness: 1,
                                dashColor: secondaryColor.withOpacity(0.2),
                                dashGapColor: Colors.transparent,
                                direction: Axis.horizontal,
                                lineLength: size.width * 0.91,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 15, right: 9, bottom: 19),
                                child: Text(
                                  "6095 Terry Lane, Golden CO 80403",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: secondaryColor.withOpacity(0.7)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "More Options",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/notificationSettingScreen");
                          },
                          child: Container(
                            width: size.width,
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(colors: [
                                  Color(0xffe3b53c).withOpacity(0.2),
                                  Color(0xffe3b53c).withOpacity(0.06),
                                ])),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.32,
                                          child: Container(
                                            width: 34,
                                            height: 34,
                                            decoration: ShapeDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(0.72, -0.69),
                                                end: Alignment(-0.72, 0.69),
                                                colors: [
                                                  Color(0xFF040415),
                                                  Color(0xFFE3B43C)
                                                ],
                                              ),
                                              shape: OvalBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xBFE3B43C)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/images/notification icon.svg")
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      "Notification Setting",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: secondaryColor.withOpacity(1)),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                    "assets/images/forward arrow.svg")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/aboutScreen");
                          },
                          child: Container(
                            width: size.width,
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(colors: [
                                  Color(0xffe3b53c).withOpacity(0.2),
                                  Color(0xffe3b53c).withOpacity(0.06),
                                ])),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.32,
                                          child: Container(
                                            width: 34,
                                            height: 34,
                                            decoration: ShapeDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(0.72, -0.69),
                                                end: Alignment(-0.72, 0.69),
                                                colors: [
                                                  Color(0xFF040415),
                                                  Color(0xFFE3B43C)
                                                ],
                                              ),
                                              shape: OvalBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xBFE3B43C)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/images/about.svg")
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      "About Us",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: secondaryColor.withOpacity(1)),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                    "assets/images/forward arrow.svg")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/contactScreen");
                          },
                          child: Container(
                            width: size.width,
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(colors: [
                                  Color(0xffe3b53c).withOpacity(0.2),
                                  Color(0xffe3b53c).withOpacity(0.06),
                                ])),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.32,
                                          child: Container(
                                            width: 34,
                                            height: 34,
                                            decoration: ShapeDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(0.72, -0.69),
                                                end: Alignment(-0.72, 0.69),
                                                colors: [
                                                  Color(0xFF040415),
                                                  Color(0xFFE3B43C)
                                                ],
                                              ),
                                              shape: OvalBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xBFE3B43C)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/images/phone.svg")
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      "Contact Us",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: secondaryColor.withOpacity(1)),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                    "assets/images/forward arrow.svg")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/changePasswordScreen");
                          },
                          child: Container(
                            width: size.width,
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(colors: [
                                  Color(0xffe3b53c).withOpacity(0.2),
                                  Color(0xffe3b53c).withOpacity(0.06),
                                ])),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.32,
                                          child: Container(
                                            width: 34,
                                            height: 34,
                                            decoration: ShapeDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(0.72, -0.69),
                                                end: Alignment(-0.72, 0.69),
                                                colors: [
                                                  Color(0xFF040415),
                                                  Color(0xFFE3B43C)
                                                ],
                                              ),
                                              shape: OvalBorder(
                                                side: BorderSide(
                                                    width: 0.50,
                                                    color: Color(0xBFE3B43C)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SvgPicture.asset(
                                            "assets/images/password icon.svg")
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      "Change Password",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: secondaryColor.withOpacity(1)),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                    "assets/images/forward arrow.svg")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return DeleteDialog();
                              },
                            );
                          },
                          child: Container(
                            width: size.width,
                            height: 50,
                            padding: EdgeInsets.only(left: 10, right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(colors: [
                                  Color(0xffe3b53c).withOpacity(0.2),
                                  Color(0xffe3b53c).withOpacity(0.06),
                                ])),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Opacity(
                                      opacity: 0.32,
                                      child: Container(
                                        width: 34,
                                        height: 34,
                                        decoration: ShapeDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(0.72, -0.69),
                                            end: Alignment(-0.72, 0.69),
                                            colors: [
                                              Color(0xFF040415),
                                              Color(0xFFE3B43C)
                                            ],
                                          ),
                                          shape: OvalBorder(
                                            side: BorderSide(
                                                width: 0.50,
                                                color: Color(0xBFE3B43C)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        "assets/images/delete icon.svg")
                                  ],
                                ),
                                SizedBox(width: 16),
                                Text(
                                  "Delete Account",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffe70400)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return LogoutDialog();
                              },
                            );
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
                                "Log Out",
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
                          height: 27,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          Colors.transparent, // Make the dialog background transparent
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 5.0, sigmaY: 5.0), // Adjust the blur intensity
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff261d13),
                Color(0xff060616),
              ],
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
            ),
            border:
                Border.all(color: secondaryColor.withOpacity(0.6), width: 0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.72, -0.69),
                    end: Alignment(-0.72, 0.69),
                    colors: [
                      Color(0xFFe3b53c).withOpacity(0.75),
                      Color(0xFFe3b53c).withOpacity(0.24)
                    ],
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 0.50, color: Color(0xBFE3B43C)),
                  ),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/images/delete dialog.svg",
                  width: 34,
                  height: 34,
                )),
              ),
              SizedBox(
                height: 29,
              ),
              Text(
                "Delete Account",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor.withOpacity(1)),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: 252,
                child: Text(
                  'Are you sure you want to delete account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor.withOpacity(0.6)),
                ),
              ),
              SizedBox(height: 21),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48,
                        decoration: ShapeDecoration(
                          gradient: null,
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
                            "No",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xfffff0b8)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        deleteUser(context);
                      },
                      child: Container(
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
                            "Yes",
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  deleteUser(BuildContext context) async {
    try {
      var result = await http.post(Uri.parse(ConnectionAPI.deleteUser), body: {
        "email": "saimawan185@gmail.com",
      });

      if (result.statusCode == 200) {
        var resultBody = jsonDecode(result.body);

        if (resultBody["success"]) {
          Fluttertoast.showToast(msg: "You account deleted.");

          UserPreferences.logOutUser();
          Navigator.pushNamedAndRemoveUntil(
              context, "/loginScreen", (route) => false);
        } else {
          Fluttertoast.showToast(msg: "Error Occured, Try Again");
        }
      } else {
        Fluttertoast.showToast(msg: "Error Occured, Try Again");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          Colors.transparent, // Make the dialog background transparent
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 5.0, sigmaY: 5.0), // Adjust the blur intensity
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff261d13),
                Color(0xff060616),
              ],
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
            ),
            border:
                Border.all(color: secondaryColor.withOpacity(0.6), width: 0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.72, -0.69),
                    end: Alignment(-0.72, 0.69),
                    colors: [
                      Color(0xFFe3b53c).withOpacity(0.75),
                      Color(0xFFe3b53c).withOpacity(0.24)
                    ],
                  ),
                  shape: OvalBorder(
                    side: BorderSide(width: 0.50, color: Color(0xBFE3B43C)),
                  ),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/images/logout.svg",
                  width: 34,
                  height: 34,
                )),
              ),
              SizedBox(
                height: 29,
              ),
              Text(
                "Log Out",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor.withOpacity(1)),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: 252,
                child: Text(
                  'Are you sure you want to logout?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: secondaryColor.withOpacity(0.6)),
                ),
              ),
              SizedBox(height: 21),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48,
                        decoration: ShapeDecoration(
                          gradient: null,
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
                            "No",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xfffff0b8)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        UserPreferences.logOutUser();
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/loginScreen", (route) => false);
                      },
                      child: Container(
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
                            "Yes",
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
