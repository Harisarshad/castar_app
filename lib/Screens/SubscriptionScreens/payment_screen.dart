// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_border/dotted_border.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 39),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
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
                side: BorderSide(width: 0.50, color: Color(0xFFFFF0B8)),
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
                "Done",
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
      body: Stack(
        children: [
          getGradients(),
          SingleChildScrollView(
            child: SizedBox(
              width: size.width,
              child: Column(
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
                        Text(
                          "Payment",
                          style: TextStyle(
                              fontFamily: "Montserrat Alternates",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: secondaryColor.withOpacity(1)),
                        ),
                        Container()
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(18),
                    padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
                    decoration: BoxDecoration(
                        color: Color(0xFF272223).withOpacity(1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: secondaryColor.withOpacity(0.14))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/card.svg"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Credit/Debit Card",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: size.width,
                          padding: EdgeInsets.only(
                              left: 19, right: 13, top: 11.5, bottom: 11.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: secondaryColor.withOpacity(1)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/atm-card.png",
                                    height: 19.39,
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: 17,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "************2548",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xff051440)),
                                      ),
                                      Text(
                                        "Credit Card",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10,
                                            color: Color(0xffe3b53c)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: ShapeDecoration(
                                      shape: OvalBorder(
                                        side: BorderSide(
                                            width: 1, color: Color(0xFF040415)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: ShapeDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.72, -0.69),
                                        end: Alignment(-0.72, 0.69),
                                        colors: [
                                          Color(0xFF040415),
                                          Color(0xFFE3B43C)
                                        ],
                                      ),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/addCardScreen");
                          },
                          child: DottedBorder(
                            color: Color(0xffe3b53c),
                            strokeWidth: 0.7,
                            radius: Radius.circular(8),
                            child: Container(
                              width: size.width,
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  "+ Add New Card",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12,
                                      color: Color(0xffe3b53c)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 37,
                        ),
                        Container(
                          width: size.width,
                          padding: EdgeInsets.only(top: 11.89, bottom: 11.89),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/google.png",
                                height: 15,
                              ),
                              Text(
                                " Pay",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          width: size.width,
                          padding: EdgeInsets.only(top: 11.89, bottom: 11.89),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/images/apple.svg",
                                height: 15,
                              ),
                              Text(
                                " Pay",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
