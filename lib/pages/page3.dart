import 'package:bars/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Page3 extends StatefulWidget {
  static const String id = "page3";

  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page1.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SalomonBottomBar(

          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              unselectedColor: Colors.blue,
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              unselectedColor: Colors.blue,
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.amber,
            ),
            SalomonBottomBarItem(
              unselectedColor: Colors.blue,
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
