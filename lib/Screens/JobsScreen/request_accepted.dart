// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class RequestAccepted extends StatefulWidget {
  const RequestAccepted({super.key});

  @override
  State<RequestAccepted> createState() => _RequestAcceptedState();
}

class _RequestAcceptedState extends State<RequestAccepted> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: getBottomBar(1, context),
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
                      Text(
                        "Request Accepted",
                        style: TextStyle(
                            fontFamily: "Montserrat Alternates",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: secondaryColor.withOpacity(1)),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset("assets/images/dots.svg"),
                          SvgPicture.asset("assets/images/dots circle.svg"),
                        ],
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                  SizedBox(width: 23),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      context, "/contractScreen");
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
                                          width: 0.50,
                                          color: Color(0xFFFFF0B8)),
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
                                      "View Contract",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color(0xff040415).withOpacity(1)),
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
          )
        ],
      ),
    );
  }
}
