import 'package:flutter/material.dart';
import 'package:kurepay/export/others_export.dart';
import 'package:kurepay/widget/atom/h1.dart';
import 'dart:async';



class Splash_screen extends StatefulWidget {
  @override
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {

   @override
  void initState() {
    super.initState();
    Timer (Duration(seconds: 3) , () => Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_up_screen())));
  }



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