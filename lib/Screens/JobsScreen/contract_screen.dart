// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  String desc =
      "Lorem ipsum dolor sit amet consectetur. Sed eu tortor id hendrerit. Duis pellentesque porta tincidunt pellentesque. Dictumst elementum tristique venenatis amet a vestibulum.Lorem ipsum dolor sit amet consectetur. Sed eu tortor id hendrerit. Duis pellentesque porta tincidunt pellentesque.";

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
                          "Contract",
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
                    height: 289,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/contract image.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    desc,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: secondaryColor.withOpacity(0.7)),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: size.width,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(0xFF272223),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/images/phone.svg",
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffe3b53c)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "234 4567 345",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: size.width,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Color(0xFF272223),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset(
                          "assets/images/email.svg",
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Address",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffe3b53c)),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Bridget@mail.com",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/dealDoneScreen");
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
                          "Deal Done",
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
