import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          highlightColor: Colors.transparent, splashColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
