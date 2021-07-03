import 'package:flutter/material.dart';

import 'StartScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Give Back',
      theme: ThemeData(
      
       
        primarySwatch: Colors.purple,
      ),
      home: StartScreen(),
    );
  }
}

