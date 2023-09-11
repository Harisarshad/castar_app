// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:castar_app/UserPreferences/current_user.dart';
import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EditPeofileScreen extends StatefulWidget {
  const EditPeofileScreen({super.key});

  @override
  State<EditPeofileScreen> createState() => _EditPeofileScreenState();
}

class _EditPeofileScreenState extends State<EditPeofileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  CurrentUser currentUser = Get.put(CurrentUser());

  @override
  void initState() {
    firstNameController.text = currentUser.user.firstName;
    lastNameController.text = currentUser.user.lastName;
    emailController.text = currentUser.user.email;

    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();

    super.dispose();
  }

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
                        "Edit Profile",
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
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: size.width,
                        height: 132,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffe3b53c),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/profile.png"),
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/images/choose image.svg"),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Upload your photo",
                                  style: TextStyle(
                                      fontFamily: "Mont",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: secondaryColor.withOpacity(0.7)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        height: 51,
                        child: TextField(
                          controller: firstNameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                          style: TextStyle(
                            color: Color(0xfffff0b8).withOpacity(0.7),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                              fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                              labelText: "First Name",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryColor.withOpacity(0.5)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: secondaryColor.withOpacity(0.21)),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          secondaryColor.withOpacity(0.21)))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 51,
                        child: TextField(
                          controller: lastNameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                          style: TextStyle(
                            color: Color(0xfffff0b8).withOpacity(0.7),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                              fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                              labelText: "Last Name",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryColor.withOpacity(0.5)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: secondaryColor.withOpacity(0.21)),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          secondaryColor.withOpacity(0.21)))),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 51,
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                          style: TextStyle(
                            color: Color(0xfffff0b8).withOpacity(0.7),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                              fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                              labelText: "Email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              labelStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryColor.withOpacity(0.5)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: secondaryColor.withOpacity(0.21)),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      width: 1,
                                      color:
                                          secondaryColor.withOpacity(0.21)))),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
