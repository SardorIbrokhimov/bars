import 'package:bars/pages/page1.dart';
import 'package:bars/pages/page2.dart';
import 'package:bars/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
      routes: {
        Page1.id: (context) => Page1(),
        Page2.id: (context) => Page2(),
        Page3.id: (context) => Page3(),
      },
    );
  }
}
