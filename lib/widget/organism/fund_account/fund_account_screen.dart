import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/widget/atom/h1.dart';
import 'package:kurepay/widget/organism/fund_account/currency/bitcoin.dart';
import 'package:kurepay/widget/organism/fund_account/fund_tab_bar.dart';

class Fund_account_screen extends StatefulWidget {
  @override
  _Fund_account_screenState createState() => _Fund_account_screenState();
}

class _Fund_account_screenState extends State<Fund_account_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 4,
          child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 72, horizontal: 50),
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('images/backsarrow.png',),
                  Apptext(text: 'Fund Wallet', color: Colors.black, fontweight: FontWeight.bold,),
                  Container(width: 33, height: 0,),

                ],
                ),
              ),
                  // SizedBox(height: 10,),

                   Container(
                     padding: EdgeInsets.fromLTRB(50, 20, 50, 50),
                     color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Apptext(
                        text: 'Fund Wallet', color: Colors.black, fontsize: 24.0, fontweight: FontWeight.bold,
                      ),
                   SizedBox(height: 10,),

                      Apptext(
                        text: 'Select the wallet you want to fund and type much would you like to fund your wallet?', 
                        color: Colors.black, fontsize: 16.0, fontweight: FontWeight.normal,
                      )
                    ],
                  ),
              ),
              Fund_tab_bar(),


                Expanded(
                     flex: 3,
                     child: TabBarView(         // Tab Bar View
                     physics: BouncingScrollPhysics(),
                     children: <Widget>[
                        // Provile_setting(),
                         Naira(),
                        Bitcoin(),
                        Scaffold(),
                        Scaffold(),

                        
                        
                        // Account_setting(),



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
          ButtonFilled(
            text: 'Continue',
            action: (){},
          )
        ],
      ),
    );
  }
}