// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    cvvController.dispose();
    expiryController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(18, 0, 18, 39),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/paymentSuccessScreen");
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
                "Save",
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
                          "Add Card",
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
                    height: 51,
                    margin: EdgeInsets.all(18),
                    child: TextField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                      style: TextStyle(
                        color: Color(0xfffff0b8).withOpacity(0.7),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                          fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                          labelText: "Card Holder Name",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfffff0b8).withOpacity(0.5)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfffff0b8).withOpacity(0.7)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xfffff0b8).withOpacity(0.2)))),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 51,
                    margin: EdgeInsets.only(left: 18, right: 18),
                    child: TextField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                      style: TextStyle(
                        color: Color(0xfffff0b8).withOpacity(0.7),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                          fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                          labelText: "Card Number",
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfffff0b8).withOpacity(0.5)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfffff0b8).withOpacity(0.7)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color(0xfffff0b8).withOpacity(0.2)))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 51,
                            child: TextField(
                              controller: expiryController,
                              keyboardType: TextInputType.text,
                              cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                              style: TextStyle(
                                color: Color(0xfffff0b8).withOpacity(0.7),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                                  labelText: "Expiry Date",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.5)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color(0xfffff0b8).withOpacity(0.7)),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.2)))),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 51,
                            child: TextField(
                              controller: cvvController,
                              keyboardType: TextInputType.number,
                              cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                              style: TextStyle(
                                color: Color(0xfffff0b8).withOpacity(0.7),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                                  labelText: "CVV",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.5)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color(0xfffff0b8).withOpacity(0.7)),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: BorderSide(
                                          width: 1,
                                          color: Color(0xfffff0b8)
                                              .withOpacity(0.2)))),
                            ),
                          ),
                        ),
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
