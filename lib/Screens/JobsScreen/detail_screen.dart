// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobDetailScreen extends StatefulWidget {
  const JobDetailScreen({super.key});

  @override
  State<JobDetailScreen> createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
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
            child: SingleChildScrollView(
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
                          "Details",
                          style: TextStyle(
                              fontFamily: "Montserrat Alternates",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: secondaryColor.withOpacity(1)),
                        ),
                        Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    width: size.width,
                    height: 178,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/image.png"),
                            fit: BoxFit.fill)),
                    // decoration: ShapeDecoration(
                    //   image: DecorationImage(
                    //     image: AssetImage("assets/images/image.png"),
                    //     fit: BoxFit.fill,
                    //   ),
                    //   gradient: RadialGradient(colors: [
                    //     Color(0xe3b53c33),
                    //     Color(0xfff0b833),
                    //   ]),
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(12),
                    //   ),
                    //   shadows: [
                    //     BoxShadow(
                    //       color: Color(0xf5d7861a),
                    //       blurRadius: 20,
                    //       offset: Offset(0, 4),
                    //       spreadRadius: 0,
                    //     ),
                    //     BoxShadow(
                    //       color: Color(0xf6db8c99),
                    //       blurRadius: 4,
                    //       offset: Offset(0, -2),
                    //       spreadRadius: 0,
                    //     ),
                    //   ],
                    // ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company Name",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffff0b8)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Job Type : Cinema | Date : 08/07/2023",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffff0b8).withOpacity(0.5)),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomDialog();
                            },
                          );
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset("assets/images/message.svg"),
                            SvgPicture.asset(
                                "assets/images/message circle.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width,
                    height: 0.6,
                    color: Color(0xfffff0b8).withOpacity(0.4),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Sit ut amet tincidunt elit mi ante elementum tetur.consectetur. A est tortor proin ultricies vitae luctus. Neque integer egestas magna nunc nibh nunc . c nibh nunc.",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color(0xfffff0b8).withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width,
                    height: 50,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          Color(0xFFE3B43C).withOpacity(0.1),
                          Color(0x51E3B53C).withOpacity(0.1),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/images/email.svg"),
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/images/phone.svg"),
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
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xfffff0b8)),
                      ),
                      Text(
                        "View on Map",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xfffff0b8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 260,
                    child: Text(
                      "Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xfffff0b8).withOpacity(0.5)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/locationScreen");
                    },
                    child: Container(
                      width: size.width,
                      height: 135,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/map.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
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
                          "Send Request",
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
                    height: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

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
                width: 92,
                height: 92,
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
                  "assets/images/message.svg",
                  width: 42,
                  height: 42,
                )),
              ),
              SizedBox(
                height: 29,
              ),
              Text(
                "No Chat",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor.withOpacity(1)),
              ),
              SizedBox(height: 12),
              SizedBox(
                width: 252,
                child: Text(
                  'To Continue chat please buy a credits or you can use credits as well if you have.',
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
                        Navigator.pushNamed(context, "/chatScreen");
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
                            "Use Credit",
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
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/creaditScreen");
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
                            "Buy Credit",
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
