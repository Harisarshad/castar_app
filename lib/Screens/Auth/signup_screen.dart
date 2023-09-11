// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:castar_app/Database/connection.dart';
import 'package:castar_app/Model/user_class.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  final List<String> roles = ['Fashion', 'Television', 'Cinema', 'Music'];
  String? selectedRole;

  bool showPass = false;

  bool isDropDownOpen = false;

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    roleController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
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
                        color: const Color(0xFFE3B43C).withOpacity(0.099),
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
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  getLogo(52, 52),
                  SizedBox(
                    height: 11,
                  ),
                  SizedBox(height: 37, child: getTitle(30)),
                  getSubTitle(5.47),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                      child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                        border: Border(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xfffff0b8).withOpacity(0.1),
                              Color(0xfffff0b8).withOpacity(0.0)
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Signup",
                            style: TextStyle(
                                fontFamily: 'Montserrat Alternates',
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffe3b53c).withOpacity(1)),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Please enter below details to create an account.",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffff0b8).withOpacity(0.7)),
                          ),
                          SizedBox(
                            height: 27,
                          ),
                          SizedBox(
                            height: 51,
                            child: TextField(
                              controller: firstNameController,
                              // focusNode: firstNameNode,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
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
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 51,
                            child: TextField(
                              controller: lastNameController,
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              textCapitalization: TextCapitalization.words,
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
                          SizedBox(
                            height: 20,
                          ),
                          DropdownButtonFormField<String>(
                            icon: Icon(
                              isDropDownOpen
                                  ? Icons.keyboard_arrow_up_outlined
                                  : Icons.keyboard_arrow_down_outlined,
                              color: Color(0xFFfff0b8).withOpacity(1),
                            ),
                            decoration: InputDecoration(
                                fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                                labelText: "Select Choice of Role",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xfffff0b8).withOpacity(0.5)),
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
                            value: selectedRole,
                            style: TextStyle(
                              color: Color(0xfffff0b8).withOpacity(0.7),
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                            ),
                            dropdownColor: Color(0xff201e25).withOpacity(1),
                            onTap: () {
                              setState(() {
                                isDropDownOpen
                                    ? isDropDownOpen = false
                                    : isDropDownOpen = true;
                              });
                            },
                            onSaved: (newValue) {
                              setState(() {
                                isDropDownOpen
                                    ? isDropDownOpen = false
                                    : isDropDownOpen = true;
                                selectedRole = newValue;
                                roleController.text = selectedRole.toString();
                              });
                            },
                            onChanged: (newValue) {
                              setState(() {
                                isDropDownOpen
                                    ? isDropDownOpen = false
                                    : isDropDownOpen = true;
                                selectedRole = newValue;
                                roleController.text = selectedRole.toString();
                              });
                            },
                            items: roles.map((role) {
                              return DropdownMenuItem<String>(
                                value: role,
                                child: Text(role,
                                    style: TextStyle(
                                      color: Color(0xfffff0b8).withOpacity(0.5),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    )),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 51,
                            child: TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
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
                                  labelText: "Email",
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
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 51,
                            child: TextField(
                              controller: passController,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: Color(0xfffff0b8).withOpacity(0.2),
                              obscureText: showPass ? false : true,
                              style: TextStyle(
                                color: Color(0xfffff0b8).withOpacity(0.7),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                  fillColor: Color(0xfffaf2c1).withOpacity(0.0),
                                  labelText: "Password",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showPass
                                            ? showPass = false
                                            : showPass = true;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: Icon(
                                        showPass
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        size: 19,
                                        color:
                                            Color(0xfffff0b8).withOpacity(0.7),
                                      ),
                                    ),
                                  ),
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
                          SizedBox(
                            height: 24,
                          ),
                          InkWell(
                            onTap: () {
                              if (emailController.text.trim().isEmpty ||
                                  passController.text.trim().isEmpty ||
                                  firstNameController.text.trim().isEmpty ||
                                  lastNameController.text.trim().isEmpty ||
                                  roleController.text.trim().isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Please enter all field.");
                              } else {
                                if (EmailValidator.validate(
                                    emailController.text.trim())) {
                                  validateUserEmail();
                                } else {
                                  Fluttertoast.showToast(
                                      msg: "Please enter correct email.");
                                }
                              }
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
                                  "Signup",
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
                            height: 14,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, "/loginScreen", (route) => false);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          Color(0xfffff0b8).withOpacity(0.8)),
                                ),
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffe3b53c).withOpacity(1)),
                                ),
                              ],
                            ),
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       height: 51,
                          //       decoration: BoxDecoration(
                          //           shape: BoxShape.rectangle,
                          //           borderRadius: BorderRadius.circular(8)),
                          //       child: Row(
                          //         children: [],
                          //       ),
                          //     ),
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  validateUserEmail() async {
    try {
      var result =
          await http.post(Uri.parse(ConnectionAPI.validateEmail), body: {
        "email": emailController.text.trim(),
      });
      if (result.statusCode == 200) {
        var resultBody = jsonDecode(result.body);

        if (resultBody["success"]) {
          Fluttertoast.showToast(msg: "Email is already exists.");
        } else {
          saveUserData();
        }
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  saveUserData() async {
    User userModel = User(
        1,
        emailController.text.trim(),
        passController.text.trim(),
        firstNameController.text.trim(),
        lastNameController.text.trim(),
        roleController.text.trim(),
        DateTime.now());

    try {
      var result = await http.post(Uri.parse(ConnectionAPI.signUpUser),
          body: userModel.toJoson());

      if (result.statusCode == 200) {
        var resultBody = jsonDecode(result.body);

        if (resultBody["success"]) {
          Fluttertoast.showToast(
              msg: "Congratulations, You are Signup Successfully.");

          setState(() {
            firstNameController.clear();
            lastNameController.clear();
            passController.clear();
            emailController.clear();
            roleController.clear();
          });
        } else {
          Fluttertoast.showToast(msg: "Error Occured, Try Again.");
        }
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
