import 'package:flutter/material.dart';
import 'package:kurepay/export/atom_export.dart';
import 'package:kurepay/export/others_export.dart';
import 'package:kurepay/widget/atom/h1.dart';


class Sign_up_screen extends StatefulWidget {
  @override
  _Sign_up_screenState createState() => _Sign_up_screenState();
}

class _Sign_up_screenState extends State<Sign_up_screen> {

      var _email = TextEditingController();
    var _password = TextEditingController();
    var _name = TextEditingController();
    var _number = TextEditingController();
    var _id = TextEditingController();


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
                padding: EdgeInsets.fromLTRB(0, 115, 0, 60),
                child: Apptext(text: 'Kurepay', color: Colors.white, fontweight: FontWeight.bold, fontsize: 24.0, allignment: Alignment.center, )
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 43),
                child: Column(
                 children: <Widget>[
                   CustomInput(
                     labelText: 'First Name',
                     labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/profile.png'),
                     controller: _name,
                     validator: (value) => value.isEmpty ? 'enter user email or phone number' : null
                   ),
                   SizedBox(height: 20,),
                     CustomInput(
                     labelText: 'Email Adress',
                      labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/email.png'),
                     controller: _email,
                     validator: (value) => value.isEmpty ? 'enter your secret pin' : null
                   ),
                   SizedBox(height: 20,),

                    CustomInput(
                     labelText: 'Phone Number',
                     labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/calling.png'),
                     controller: _number,
                     validator: (value) => value.isEmpty ? 'enter user email or phone number' : null
                   ),
                     SizedBox(height: 20,),
                    CustomInput(
                     labelText: 'Set a password',
                     labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/lock.png'),
                     controller: _password,
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
                   
                   CustomInput(
                     labelText: 'Referal ID (Optional)',
                      labelfontsize: 15.0,
                     labelweight: FontWeight.w400,
                     prefixIcon: Image.asset('images/id.png'),
                     controller: _id,
                     validator: (value) => value.isEmpty ? 'enter your secret pin' : null
                   ),
                   
                     SizedBox(height: 30,),

                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Container(
                           height: 20,
                           width: 20,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             border: Border.all(color:Colors.white)
                           ),
                         ),
                     SizedBox(width: 20,),

                         Apptext(
                           text: 'I agreed to all terms and conditions',
                         ),
                       ],
                     ),
                   ),

                     SizedBox(height: 30,),

                      ButtonFilled(
                     text: 'Create my account',
                     action: (){
                       if(_formKey.currentState.validate()){
                         print('hello');
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Account_settings_screen()));

                       }
                     },
                   ),
                        
                     SizedBox(height: 30,),

                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Apptext(
                           text: 'I have an account already.',
                         ),
                       SizedBox(width: 30,),

                         InkWell(
                           onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Login_screen()));

                           },
                                                    child: Apptext(
                             text: 'Login', color: Color(0xFF51CBCD), fontsize: 20.0, fontweight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                   ),

                     SizedBox(height: 50,),


                     

                 ]
                  )
                )
                 ]
                )
              )
          )
                );
  }
}