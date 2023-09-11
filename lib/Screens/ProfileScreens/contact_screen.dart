// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    messageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(children: [
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
                      "Contact Us",
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
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 51,
                      child: TextField(
                        controller: titleController,
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
                            labelText: "Title",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffff0b8).withOpacity(0.5)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: secondaryColor.withOpacity(0.21)),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: secondaryColor.withOpacity(0.21)))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: messageController,
                      keyboardType: TextInputType.multiline,
                      minLines: 3,
                      maxLines: null,
                      cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                      style: TextStyle(
                        color: Color(0xfffff0b8).withOpacity(0.7),
                        fontSize: 16,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                          fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                          labelText: "Message",
                          alignLabelWithHint: true,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfffff0b8).withOpacity(0.5)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: secondaryColor.withOpacity(0.21)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: secondaryColor.withOpacity(0.21)))),
                    ),
                    SizedBox(
                      height: 24,
                    )
                  ],
                ),
              )),
              InkWell(
                onTap: () {},
                child: Container(
                  width: size.width,
                  height: 48,
                  margin: EdgeInsets.only(bottom: 60),
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
                      "Send",
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
        )
      ]),
    );
  }
}
