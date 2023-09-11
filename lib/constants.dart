// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:castar_app/Screens/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Color bgColor = const Color(0xff040415).withOpacity(1);
Color secondaryColor = const Color(0xFFfff0b8);

Widget getGradients() {
  return Stack(
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
      )
    ],
  );
}

Widget getGradientBottom() {
  return Positioned(
    right: 0,
    bottom: 0,
    child: Container(
      width: 75,
      height: 75,
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
  );
}

Widget getGradientTitle(String text) {
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        colors: [
          Color(0xFFE3B53C),
          Color(0xFFFAF2C1),
          Color(0xFFE3B53C),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds);
    },
    child: Text(
      text,
      style: TextStyle(
          fontFamily: "Montserrat Alternates",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
          color: Colors.white),
    ),
  );
}

Widget getGradientText(String text) {
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        colors: [
          Color(0xFFE3B53C),
          Color(0xFFFAF2C1),
          Color(0xFFE3B53C),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds);
    },
    child: Text(
      text,
      style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 10,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
          color: Colors.white),
    ),
  );
}

Widget getTitle(double size) {
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return LinearGradient(
        colors: [
          Color(0xFFE3B53C),
          Color(0xFFFAF2C1),
          Color(0xFFE3B53C),
        ],
        begin: Alignment.center,
        end: Alignment.topRight,
      ).createShader(bounds);
    },
    child: Text(
      'Castar',
      style: TextStyle(
          fontFamily: 'Mont',
          fontWeight: FontWeight.w500,
          fontSize: size,
          color: Colors.white),
    ),
  );
}

Widget getSubTitle(double size) {
  return Text(
    'THE CASTING OF NEW STARS',
    style: TextStyle(
        fontFamily: 'Mont',
        fontWeight: FontWeight.w400,
        fontSize: size,
        letterSpacing: 1.2,
        color: Color(0xFFFFF0B8)),
  );
}

Widget getLogo(double height, double width) {
  return Image.asset(
    "assets/images/logo.png",
    height: height,
    width: width,
  );
}

Widget getBottomBar(int currentTab, BuildContext context) {
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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(tab: 0),
                    ),
                    (route) => false);
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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(tab: 1),
                    ),
                    (route) => false);
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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(tab: 2),
                    ),
                    (route) => false);
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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(tab: 3),
                    ),
                    (route) => false);
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
