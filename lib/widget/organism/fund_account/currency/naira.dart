import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Naira extends StatelessWidget {
  const Naira({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top:100),
            child: Column(
              children: <Widget>[
                Apptext(
                  allignment: Alignment.center,
                  text: '0.00',
                color: Colors.black, fontsize: 24.0, fontweight: FontWeight.bold,
                ),

                SizedBox(height: 60,),

                Apptext(
                  allignment: Alignment.center,
                  text: 'Your Bal: NGN 75,000',
                color: Color(0xFF006577), fontsize: 15.0, fontweight: FontWeight.bold,
                )
              ],
            ),
          ),
          SizedBox(height: 50),
            // ButtonFilled(
          //   text: 'Continue',
          //   action: (){},
          //   color: Color(0xFF006577),
          //   textColor: Colors.white,
          // )
        ],
      ),
    );
  }
}