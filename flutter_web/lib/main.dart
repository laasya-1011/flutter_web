import 'package:flutter/material.dart';
import 'package:flutter_web/pages/screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'web_app',
      theme: ThemeData(fontFamily: 'Montserrat', primarySwatch: Colors.blue),
      home: Screen(),
    );
  }
}
