import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Forgot_password_screen extends StatefulWidget {
  @override
  _Forgot_password_screenState createState() => _Forgot_password_screenState();
}

class _Forgot_password_screenState extends State<Forgot_password_screen> {

  
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
                // color: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 115),
                child: Apptext(text: 'Kurepay', color: Colors.white, fontweight: FontWeight.bold, fontsize: 24.0, allignment: Alignment.center, )
              ),

                   SizedBox(height: 100,),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 43),
                // color: Colors.red,
                child: Column(
                 children: <Widget>[
                   CustomInput(
                     labelText: 'Email/Phone number',
                     labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/profile.png'),
                     controller: _email,
                     suffixIcon: InkWell(
                       onTap: (){
                         setState(() {
                           pass();
                         });
                       },
                       child: Image.asset('images/eye.png')),
                     obsecuretext: _passwords,
                     validator: (value) => value.isEmpty ? 'enter user email or phone number' : null
                   ),
                   SizedBox(height: 20,),

                                      ButtonFilled(
                     text: 'Login',
                     action: (){
                       if(_formKey.currentState.validate()){
                         print('hello');
                       }
                     },
                   ),
                 

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