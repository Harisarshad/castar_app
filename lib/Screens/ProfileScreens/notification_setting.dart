// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() =>
      _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  bool isPushSwitched = false;
  bool isEmailSwitched = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          getGradients(),
          Container(
            padding: const EdgeInsets.only(left: 18, right: 18),
            width: size.width,
            child: Column(
              children: [
                const SizedBox(
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
                      Row(
                        children: [
                          Text(
                            "No",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: secondaryColor.withOpacity(1)),
                          ),
                          Text(
                            "tification Setting",
                            style: TextStyle(
                                fontFamily: "Montserrat Alternates",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: secondaryColor.withOpacity(1)),
                          ),
                        ],
                      ),
                      Container()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: size.width,
                  height: 50,
                  padding: EdgeInsets.only(left: 18, right: 18),
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(0.42, 0.51),
                      radius: 0,
                      colors: [
                        Color(0xFFE3B43C).withOpacity(0.2),
                        Color(0xFFFFF0B8).withOpacity(0.2)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19F5D786),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mute Push Notifications",
                        style: TextStyle(
                            fontFamily: "Mont",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: secondaryColor.withOpacity(1)),
                      ),
                      Switch(
                          onChanged: togglePushSwitch,
                          value: isPushSwitched,
                          activeColor: Color(0xff040415),
                          activeTrackColor: secondaryColor,
                          inactiveThumbColor: secondaryColor.withOpacity(0.6),
                          inactiveTrackColor: secondaryColor.withOpacity(0.2),
                          materialTapTargetSize: MaterialTapTargetSize.padded)
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: size.width,
                  height: 50,
                  padding: EdgeInsets.only(left: 18, right: 18),
                  decoration: ShapeDecoration(
                    gradient: RadialGradient(
                      center: Alignment(0.42, 0.51),
                      radius: 0,
                      colors: [
                        Color(0xFFE3B43C).withOpacity(0.2),
                        Color(0xFFFFF0B8).withOpacity(0.2)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.30, color: Color(0xFF040415)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19F5D786),
                        blurRadius: 20,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mute Email Notifications",
                        style: TextStyle(
                            fontFamily: "Mont",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: secondaryColor.withOpacity(1)),
                      ),
                      Switch(
                          onChanged: toggleEmailSwitch,
                          value: isEmailSwitched,
                          activeColor: Color(0xff040415),
                          activeTrackColor: secondaryColor,
                          inactiveThumbColor: secondaryColor.withOpacity(0.6),
                          inactiveTrackColor: secondaryColor.withOpacity(0.2),
                          materialTapTargetSize: MaterialTapTargetSize.padded)
                    ],
                  ),
                )
                // Stack(
                //   alignment: Alignment.center,
                //   children: [
                //     Container(
                //       width: size.width,
                //       height: 50,
                //       decoration: BoxDecoration(
                //         color: Colors.transparent,
                //         gradient: LinearGradient(
                //           colors: [Color(0xff040415), Color(0XFFe3b53c)],
                //           begin: Alignment.topCenter,
                //           end: Alignment.bottomCenter,
                //         ),
                //         borderRadius: BorderRadius.circular(8),
                //       ),
                //       child: Center(
                //         child: Text(
                //           'Gradient Border',
                //           style: TextStyle(color: Colors.white),
                //         ),
                //       ),
                //     ),
                //     Container(
                //       width: size.width - 0.6,
                //       height: 49.4,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         gradient: RadialGradient(
                //           center: Alignment(0.42, 0.51),
                //           radius: 0.42,
                //           colors: [
                //             Color(0xFFE3B43C).withOpacity(0.2),
                //             secondaryColor.withOpacity(0.2)
                //           ],
                //         ),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Color(0x19F5D786),
                //             blurRadius: 20,
                //             offset: Offset(0, 4),
                //             spreadRadius: 0,
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }

  void togglePushSwitch(bool value) {
    if (isPushSwitched == false) {
      setState(() {
        isPushSwitched = true;
      });
    } else {
      setState(() {
        isPushSwitched = false;
      });
    }
  }

  void toggleEmailSwitch(bool value) {
    if (isEmailSwitched == false) {
      setState(() {
        isEmailSwitched = true;
      });
    } else {
      setState(() {
        isEmailSwitched = false;
      });
    }
  }
}
