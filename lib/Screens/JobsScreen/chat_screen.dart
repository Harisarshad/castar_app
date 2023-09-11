// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          getGradients(),
          SizedBox(
            width: size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 54,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset("assets/images/person 2.png"),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ronald Richards",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: secondaryColor),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff7ee579)),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Online",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: secondaryColor.withOpacity(0.5)),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 28),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: size.width * 0.3),
                            padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                            decoration: ShapeDecoration(
                              color: Color(0xFF272223),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: Text(
                              "Hi Ronald, how are you? 😄",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "2:55 PM",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: secondaryColor.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                            margin: EdgeInsets.only(left: size.width * 0.2),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE3B43C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: Text(
                              "Hello! Nice to meet you Ronald! What about a cup of coffee today evening? ☕️",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "2:55 PM",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: secondaryColor.withOpacity(0.5)),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              SvgPicture.asset(
                                "assets/images/tick.svg",
                                color: Colors.green,
                                height: 8,
                                width: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                            margin: EdgeInsets.only(right: size.width * 0.3),
                            decoration: ShapeDecoration(
                              color: Color(0xFF272223),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: Text(
                              "Sure, let’s do it! 😊",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "2:55 PM",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: secondaryColor.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                            margin: EdgeInsets.only(left: size.width * 0.2),
                            decoration: ShapeDecoration(
                              color: Color(0xFFE3B43C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: Text(
                              "Great I will write later the exact time and place. See you soon!",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "2:55 PM",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: secondaryColor.withOpacity(0.5)),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              SvgPicture.asset(
                                "assets/images/tick.svg",
                                color: Colors.green,
                                height: 8,
                                width: 15,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                getBottomBar()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 72,
      padding: EdgeInsets.only(left: 19, right: 19),
      // color: secondaryColor.withOpacity(0.2),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 0,
          // begin: Alignment(1.00, -0.00),
          // end: Alignment(-1, 0),
          colors: [
            Color(0xFFE3B43C).withOpacity(1),
            Color(0xFFE3B43C).withOpacity(0.1)
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 43,
              child: TextField(
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: secondaryColor),
                cursorColor: secondaryColor,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding: EdgeInsets.only(left: 20),
                  labelText: 'Type your message here...', // Title text
                  labelStyle: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: secondaryColor.withOpacity(0.5)),
                  // suffix: Padding(
                  //   padding: const EdgeInsets.fromLTRB(12, 6, 16, 0),
                  //   child: SvgPicture.asset("assets/images/emoji.svg"),
                  // ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 6, 16, 6),
                    child: SvgPicture.asset(
                      "assets/images/emoji.svg",
                    ),
                  ), // Suffix icon
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(88.0), // Border radius
                    borderSide: BorderSide(
                      width: 0.5, // Border width
                      color: Color(0xfffff0b3), // Border color
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(88.0), // Border radius
                    borderSide: BorderSide(
                      width: 0.5, // Border width
                      color: Color(0xfffff0b3), // Border color
                    ),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   height: 43,
          //   child: TextField(
          //     decoration: InputDecoration(
          //         floatingLabelBehavior: FloatingLabelBehavior.never,
          //         suffix: SvgPicture.asset("assets/images/emoji.svg"),
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(88),
          //             borderSide:
          //                 BorderSide(color: secondaryColor, width: 0.5)),
          //         label: Text(
          //           "Type your message here...",
          //           style: TextStyle(
          //               fontFamily: "Poppins",
          //               fontWeight: FontWeight.w400,
          //               fontSize: 14,
          //               color: secondaryColor.withOpacity(0.5)),
          //         )),
          //   ),
          // ),
          SizedBox(
            width: 17,
          ),
          Container(
            width: 43,
            height: 43,
            decoration: ShapeDecoration(
              color: Color(0xFFE3B43C),
              shape: OvalBorder(
                side: BorderSide(width: 0.25, color: Color(0xFFE3B43C)),
              ),
            ),
            child: Center(
              child: SvgPicture.asset("assets/images/send.svg"),
            ),
          )
        ],
      ),
    );
  }
}
