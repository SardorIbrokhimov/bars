import 'package:bars/pages/page3.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const String id = "page2";

  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> with SingleTickerProviderStateMixin {
  int tabIndex = 0;
  late TabController tabController =
      TabController(length: 5, vsync: this, initialIndex: tabIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page3.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      bottomNavigationBar: CircleNavBar(
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: Colors.deepPurple,
        elevation: 10,
        activeIcons: [
          Icon(
            Icons.person,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.favorite,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.settings,
            color: Colors.deepPurple,
          ),
        ],
        circleWidth: 50,
        height: 50,
        initIndex: tabIndex,
        inactiveIcons: [
          Text("Account"),
          Text("Message"),
          Text("Camera"),
          Text("Likes"),
          Text("Settings"),
        ],
        onChanged: (v) {
          tabIndex = v;
          tabController.animateTo(v);
          setState(() {});
        },
        color: Colors.white,
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.green),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.purple),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white70),
        ],
      ),
    );
  }
}
