// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:castar_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String desc1 =
        "Lorem ipsum dolor sit amet consectetur. Leo lacus cursus justo vitae odio et leo. Non pretium cursus sit in pellentesque quis pellentesque pellentesque. Laoreet sem sed venenatis sed.";
    String desc2 =
        "Lorem ipsum dolor sit amet consectetur. Leo lacus cursus justo vitae odio et leo. Non pretium cursus sit in pellentesque quis pellentesque pellentesque. Laoreet sem sed venenatis sed.sus justo vitae odio et leo. Non pretium cursus sit in pellentesque quis pellentesque pellentesque. Laoreet sem sed venenatis sed.";
    String desc3 =
        "Lorem ipsum dolor sit amet consectetur. Leo lacus cursus justo vitae odio et leo. Non pretium cursus sit in pellentesque quis pellentesque pellentesque. Laoreet sem sed venenatis sed.sus justo vitae odio et leo. Non pretium cursus sit in pellentesque quis pellentesque pellentesque. Laoreet sem sed venenatis sed.";

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
                          "About Us",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/about icon.svg"),
                      SizedBox(
                        width: 7.5,
                      ),
                      getTitle("Information"),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  getDescription(desc1),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/about icon.svg"),
                      SizedBox(
                        width: 7.5,
                      ),
                      getTitle("Your Agreement"),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  getDescription(desc2),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/images/about icon.svg"),
                      SizedBox(
                        width: 7.5,
                      ),
                      getTitle("Disclosure of your Personal Date"),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  getDescription(desc3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0xffe3b53c)),
    );
  }

  Widget getDescription(String desc) {
    return Text(
      desc,
      style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: secondaryColor.withOpacity(0.7)),
    );
  }
}
