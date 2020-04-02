import 'package:flutter/material.dart';
import 'package:website/profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manish Wagle',
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: ProfilePage(),
    );
  }
}
