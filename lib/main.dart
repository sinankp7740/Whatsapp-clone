import 'package:flutter/material.dart';
import 'package:whatsapp/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),

      ),
    );
  }
}