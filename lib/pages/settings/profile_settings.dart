import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/widget/atom/h1.dart';
import 'package:kurepay/widget/molecule/custom_switch.dart';


class Provile_setting extends StatefulWidget {
  @override
  _Provile_settingState createState() => _Provile_settingState();
}

class _Provile_settingState extends State<Provile_setting> {

      var _email = TextEditingController();
    var _password = TextEditingController();

  final _formKey = new GlobalKey<FormState>();
              bool isSwitched = false;


  @override
  Widget build(BuildContext context) {
    return
       Container(
                  padding: EdgeInsets.symmetric(horizontal: 46),

        color: Colors.white,
        child: ListView(
          children: <Widget>[
                 Setting_container(
                 labeltext: "Langage",
                 text: 'English',
               ),

               SizedBox(height: 20,),
                Profile_container(
                 labeltext: "FIrst Name",
                 text: 'Adewale',
               
               ),

               SizedBox(height: 20,),

               Profile_container(
                 labeltext: "Email Address",
                 text: 'adedamolamoses@gmail.com',
               
               ),

                SizedBox(height: 20,),

               Profile_container(
                 labeltext: "BVN Verification",
                 text: '0236728392',
                 
               ),

                SizedBox(height: 20,),

               Profile_container(
                 labeltext: "Old Password",
                 text: '******************',
                 
               ),

                SizedBox(height: 20,),

               Profile_container(
                 labeltext: "New Password",
                 text: '',
                 
               ),

                SizedBox(height: 20,),

             
            

            SizedBox(height: 50,),

                   ButtonFilled(
                     text: 'Login',
                     color: Color(0xFF006577),
                     textColor: Colors.white,
                     action: (){
                       if(_formKey.currentState.validate()){
                         print('hello');
                       }
                     },
                   ),

            

            
          ],
        ),
      
    );
  }
}

class Setting_container extends StatelessWidget {
  final text;
  final onpressed;
  final labeltext;
   Setting_container({
    Key key, this.text, this.onpressed, this.labeltext,
  }) : super(key: key);


  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Apptext(text: labeltext, color: Colors.black, fontsize: 15,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
             color: Color(0xFFF2F2F2),
             borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: <Widget>[
                Apptext(
                  text: text,
                  color: Color(0xFF006276),
                  fontweight: FontWeight.bold,
                ),
                Spacer(),
                  CustomSwitchs(
                    isSwitched: isSwitched,
                    onpressed : onpressed
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }
}








class Profile_container extends StatelessWidget {
  final text;
  final onpressed;
  final labeltext;
   Profile_container({
    Key key, this.text, this.onpressed, this.labeltext,
  }) : super(key: key);


  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Apptext(text: labeltext, color: Colors.black, fontsize: 15,),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
             color: Color(0xFFF2F2F2),
             borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: <Widget>[
                Apptext(
                  text: text,
                  color: Color(0xFF006276),
                  fontweight: FontWeight.bold,
                ),
                Spacer(),
                 Image.asset('images/edit.png'),
                 Apptext(text: 'edit', fontsize: 12.0,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}