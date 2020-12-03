import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/export/others_export.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Login_screen extends StatefulWidget {
  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {

    var _email = TextEditingController();
    var _password = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  bool _passwords = true;

  void pass(){
    _passwords = !_passwords;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF006577) ,
      body: Form(
        key: _formKey,
              child: Container(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 115),
                child: Apptext(text: 'Kurepay', color: Colors.white, fontweight: FontWeight.bold, fontsize: 24.0, allignment: Alignment.center, )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 43),
                child: Column(
                 children: <Widget>[
                   CustomInput(
                     labelText: 'Email/Phone number',
                     labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/profile.png'),
                     controller: _email,
                     validator: (value) => value.isEmpty ? 'enter user email or phone number' : null
                   ),
                   SizedBox(height: 20,),
                   CustomInput(
                     labelText: 'password',
                      labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/lock.png'),
                     suffixIcon: InkWell(
                       onTap: (){
                         setState(() {
                           pass();
                         });
                       },
                       child: Image.asset('images/eye.png')),
                     obsecuretext: _passwords,


                     controller: _password,
                     validator: (value) => value.isEmpty ? 'enter your secret pin' : null
                   ),

                   SizedBox(height: 30,),

                   InkWell(
                     onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot_password_screen()));

                     },
                                      child: Apptext( fontsize: 14.0,
                       text: 'Forgot password', allignment: Alignment.centerRight,
                     ),
                   ),
                   SizedBox(height: 30,),

                   ButtonFilled(
                     text: 'Login',
                     action: (){
                       if(_formKey.currentState.validate()){
                         print('hello');
                       }
                     },
                   ),

                   Container(
                     padding: EdgeInsets.symmetric(vertical: 40),

                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Image.asset('images/goggle.png', width: 50,)),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: (){},
                        child: Image.asset('images/facebook.png' , width: 20,)),


                       ],
                     ),
                   ),

                   SizedBox(height: 50,),


                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: <Widget>[
                      InkWell(
                        onLongPress: (){},
                        child: Image.asset('images/fingerprint.png', width: 50,)),
                      SizedBox(width: 20,),
                       Apptext(
                         text: 'Fingerprint ID',
                       )
                       ],
                     ),
                   ),

                   SizedBox(height: 70,),



                 ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}