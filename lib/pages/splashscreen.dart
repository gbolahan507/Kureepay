import 'package:flutter/material.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Splash_screen extends StatefulWidget {
  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF006577) ,
        child: Apptext(text: 'Kurepay', fontsize: 24.0 , fontweight: FontWeight.bold, color: Colors.white, allignment: Alignment.center, )
      ),
    );
  }
}