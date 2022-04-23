import 'dart:math';

import 'package:bars/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Page1 extends StatefulWidget {
  static const String id = "page1";

  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page2.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      floatingActionButton: SpeedDial(
        direction: SpeedDialDirection.up,
        animationAngle: pi,
        useRotationAnimation: false,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(
          size: 22,
        ),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.red,
            label: "1",
            child: Icon(
              Icons.accessibility,
              color: Colors.white,
            ),
          ),
          SpeedDialChild(
            label: "2",
            backgroundColor: Colors.yellow,
            child: Icon(Icons.edit),
          ),
          SpeedDialChild(
            label: "3",
            backgroundColor: Colors.pinkAccent,
            child: Icon(Icons.mic_none_rounded),
          ),
          SpeedDialChild(
            label: "3",
            backgroundColor: Colors.orange,
            child: Icon(Icons.camera_alt),
          ),
          SpeedDialChild(
            label: "4",
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.airplanemode_active),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
