// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants.dart';

class MapLocation extends StatefulWidget {
  const MapLocation({super.key});

  @override
  State<MapLocation> createState() => _MapLocationState();
}

class _MapLocationState extends State<MapLocation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Location",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: "Proxima Nova",
              color: secondaryColor.withOpacity(1)),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: secondaryColor.withOpacity(1),
            size: 24,
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/full map.png"),
                fit: BoxFit.fill)),
      ),
    );
  }
}
