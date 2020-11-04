import 'package:flutter/material.dart';



class Settings_heading extends StatelessWidget {
  const Settings_heading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
      color: Colors.white
    //  boxShadow: [
    //    BoxShadow(
         
    //    )
    //  ]
      ),
       child:
        TabBar( 
                unselectedLabelColor: Color(0xFFC4C4C4),
                labelColor: Color(0xFF006276),
                labelPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                indicatorColor: Color(0xFF2D6CDF),
                indicator: BoxDecoration(
                  color: Color(0xFFE5E5E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                
               
               tabs:  <Widget>[
               
                 Text('PROFILE SETTINGS', 
                 style: TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.bold
                 ),
                 ),
                 Text('ACCOUNT SETTINGS',
                 style: TextStyle(
                   fontSize: 14,
                   fontWeight: FontWeight.bold
                 ),
                 ),
                 
                 
               ],
             ),
    );
  }
}