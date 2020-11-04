import 'package:flutter/material.dart';
import 'package:kurepay/pages/settings/account_setting.dart';
import 'package:kurepay/pages/settings/profile_settings.dart';
import 'package:kurepay/pages/settings/settings_heading.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Account_settings_screen extends StatefulWidget {
  @override
  _Account_settings_screenState createState() => _Account_settings_screenState();
}

class _Account_settings_screenState extends State<Account_settings_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
          child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 72, horizontal: 50),
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(width: 33, height: 0,),
                  Apptext(text: 'Settings', color: Colors.black, fontweight: FontWeight.bold,),
                  Image.asset('images/misss.png',)
                ],
                ),
              ),
              SizedBox(height: 10,),

              Settings_heading(),

                Expanded(
                     flex: 3,
                     child: TabBarView(         // Tab Bar View
                     physics: BouncingScrollPhysics(),
                     children: <Widget>[
                        Provile_setting(),
                        
                        Account_setting(),



],
         ),
                    ),
            ],
          ),
        ),
        
      ),
    );
  }
}