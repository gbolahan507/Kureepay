import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Bitcoin extends StatelessWidget {
  const Bitcoin({
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

                SizedBox(height: 30,),

                Apptext(
                  allignment: Alignment.center,
                  text: 'Your Bal: NGN 75,000',
                color: Color(0xFF006577), fontsize: 15.0, fontweight: FontWeight.bold,
                ),
                Bitcoin_container(
                  text: '0.00875 BTC',
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          ButtonFilled(
            text: 'Continue',
            action: (){},
            color: Color(0xFF006577),
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}






class Bitcoin_container extends StatelessWidget {
  final text;
  final onpressed;
   Bitcoin_container({
    Key key, this.text, this.onpressed,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal:50),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
             color: Color(0xFFF2F2F2),
             borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: <Widget>[
                Apptext(
                  allignment: Alignment.center,
                  text: text,
                  color: Color(0xFF9C9C9C),
                  fontweight: FontWeight.bold,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}