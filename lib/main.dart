import 'package:flutter/material.dart';
import 'package:kurepay/export/organism_export.dart';
import 'package:kurepay/export/others_export.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,

      ),
      home:  Splash_screen(),
    );
  }
}