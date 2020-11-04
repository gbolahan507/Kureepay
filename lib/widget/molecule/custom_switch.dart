import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';





class CustomSwitchs extends StatelessWidget {
  const CustomSwitchs({
    Key key,
    @required this.isSwitched, this.onpressed,
  }) : super(key: key);

  final bool isSwitched;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      height: 20,
      width: 40,
      value: isSwitched,
      inactiveColor: Color(0xFFDD6A57),
      toggleSize: 15.0,
      activeColor:Color(0xFF92E3A9), 
      onToggle: onpressed,
    );
  }
}


              // bool isSwitched = false;
            // CustomSwitchs(
            //   isSwitched: isSwitched,
            //   onpressed : (value){
            //     onChanged: (value){
            //       setState(() {
            //      isSwitched = value;
            //       });
            //     };
            //   }
            //   )

