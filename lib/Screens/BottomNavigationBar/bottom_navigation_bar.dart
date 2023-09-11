// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_full_hex_values_for_flutter_colors, deprecated_member_use

import 'package:castar_app/Screens/HomeScreens/home_screen.dart';
import 'package:castar_app/Screens/JobsScreen/jobs_screen.dart';
import 'package:castar_app/Screens/Notifications/notifications_screen.dart';
import 'package:castar_app/Screens/ProfileScreens/profile_screen.dart';
import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../UserPreferences/current_user.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.tab});

  final int tab;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTab = 0;

  CurrentUser currentUser = Get.put(CurrentUser());

  @override
  void initState() {
    currentTab = widget.tab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CurrentUser(),
        initState: (state) {
          currentUser.getUserData();
        },
        builder: (context) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                    child: currentTab == 0
                        ? HomeScreen()
                        : currentTab == 1
                            ? JobsScreen()
                            : currentTab == 3
                                ? ProfileScreen()
                                : NotificationsScreen()),
                getBottomBar()
              ],
            ),
          );
        });
  }

  Widget getBottomBar() {
    return Container(
      height: 49,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border(top: BorderSide(width: 0.1, color: secondaryColor)),
        // boxShadow: [BoxShadow(color: Color(0xfff4e19c24).withOpacity(0.14))],
      ),
      child: Stack(
        children: [
          getGradientBottom(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/images/home.svg",
                      color: currentTab == 0 ? null : Color(0xff6c6659),
                      height: 20,
                      width: 20,
                    ),
                    // Icon(
                    //   Icons.home,
                    //   size: 24,
                    //   color: Color(0xff6c6659),
                    // ),
                    currentTab == 0
                        ? getGradientText("Home")
                        : Text(
                            "Home",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                                color: Color(0xff6c6659)),
                          )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/images/company.svg",
                      color: currentTab == 1 ? null : Color(0xff6c6659),
                      height: 20,
                      width: 20,
                    ),
                    // Icon(
                    //   Icons.store,
                    //   size: 24,
                    //   color: Color(0xff6c6659),
                    // ),
                    currentTab == 1
                        ? getGradientText("Jobs")
                        : Text(
                            "Jobs",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                                color: Color(0xff6c6659)),
                          )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/images/notification.svg",
                      color: currentTab == 2 ? null : Color(0xff6c6659),
                      height: 20,
                      width: 20,
                    ),
                    // Icon(
                    //   Icons.home,
                    //   size: 24,
                    //   color: Color(0xff6c6659),
                    // ),
                    currentTab == 2
                        ? getGradientText("Notification")
                        : Text(
                            "Notification",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                                color: Color(0xff6c6659)),
                          )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentTab = 3;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      "assets/images/profile.svg",
                      color: currentTab == 3 ? null : Color(0xff6c6659),
                      height: 20,
                      width: 20,
                    ),
                    currentTab == 3
                        ? getGradientText("Profile")
                        : Text(
                            "Profile",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                                color: Color(0xff6c6659)),
                          )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
        ],
      ),
    );
  }
}
