import 'package:flutter/material.dart';


Widget CustomInput({
  validator,
  hintext,
  focusedBorder,
  fillcolor,
  enableBorder,
  onchanged,
  labelText,
  filled,
  suffixIcon,
  haeding,
  height,
  obsecuretext,
  fontweight,
  onTapsuffixicon,
  prefixIcon,
  labelfontsize,
  labelweight,
  
  TextEditingController controller,
}) {
  return Container(
    child: Column(
      children: <Widget>[
         Align(
                  alignment: Alignment.centerLeft,
                  child: Text('$labelText',
                   style: TextStyle(
                 color: Color(0xFFFFFFFF),
                 fontSize:  labelfontsize?? 16.0,
                 fontWeight: labelweight?? FontWeight.bold,
                 fontFamily: 'Roboto',
                  ),)),
                  SizedBox(height: 8,),
                 
        TextFormField(
          
          onChanged: onchanged,
          controller: controller,
          textAlign: TextAlign.justify,
          validator: validator,
          obscureText: obsecuretext ?? false,
          decoration: InputDecoration( 
            labelText: haeding,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10.0),
           borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2.0),
         ),
         contentPadding: EdgeInsets.symmetric(horizontal: 24,),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10.0),
           borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2.0),
         ),
         focusedBorder : OutlineInputBorder(
           borderRadius: BorderRadius.circular(10.0),
           borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2.0),
         ),
            hintStyle: TextStyle(
                color:Color(0xFF999999),  fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'OpenSans' ),
            fillColor: Color(0xFFF2F2F2),
            filled: false,
  
            hintText: hintext,
          ),
        ),
      ],
    ),
  );
}







Widget SpecialInput({
  validator,
  hintext,
  focusedBorder,
  fillcolor,
  enableBorder,
  onchanged,
  labelText,
  filled,
  suffixIcon,
  haeding,
  height,
  obsecuretext,
  fontweight,
  sublabel,
  harshtag,
  
  TextEditingController controller,
}) {
  return Container(
    child: Column(
      children: <Widget>[
         Align(
                  alignment: Alignment.centerLeft,
                  child: Text('$labelText',
                   style: TextStyle(
                 color: Color(0xFF4D4D4D),
                 fontSize:   16.0,
                 fontWeight:  FontWeight.bold,
                 fontFamily: 'OpenSans'
                  ),)),
                   Align(
                  alignment: Alignment.centerLeft,
                  child: Text('$sublabel',
                   style: TextStyle(
                 color: Color(0xFF4D4D4D),
                 fontSize:   16.0,
                 fontFamily: 'OpenSans'
                  ),)),
                  SizedBox(height: 8,),
                 
        TextFormField(
          
          onChanged: onchanged,
          controller: controller,
          textAlign: TextAlign.justify,
          validator: validator,
          obscureText: obsecuretext ?? false,
          decoration: InputDecoration( 
            labelText: haeding,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(3.0),
           borderSide: BorderSide(color: Colors.grey, width: 2.0),
         ),
         contentPadding: EdgeInsets.symmetric(horizontal: 24,),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(3.0),
           borderSide: BorderSide(color: Colors.grey, width: 0.5),
         ),
         focusedBorder : OutlineInputBorder(
           borderRadius: BorderRadius.circular(3.0),
           borderSide: BorderSide(color: Colors.grey, width: 0.5),
         ),
            hintStyle: TextStyle(
                color:Color(0xFF999999),  fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'OpenSans' ),
            fillColor: Color(0xFFF2F2F2),
            filled: true,
  
            hintText: hintext,
          ),
        ),
         
        SizedBox(height: 15,),

        Align(alignment: Alignment.centerLeft,
                  child: Container(
            height: 32,
            width: 103,
            child: Align(alignment: Alignment.center,
                          child: Text(
                '$harshtag',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400

                ),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey ),
              borderRadius: BorderRadius.circular(16)
            ),
          ),
        )
      ],
    ),
  );
}







Widget SearchInput({
  validator,
  hintext,
  focusedBorder,
  fillcolor,
  enableBorder,
  onchanged,
  filled,
  suffixIcon,
  haeding,
  height,
  obsecuretext,
  fontweight,
  prefixIcon,
  
  TextEditingController controller,
}) {
  return Container(
    child: Column(
      children: <Widget>[
        TextFormField(
          onChanged: onchanged,
          controller: controller,
          textAlign: TextAlign.justify,
          validator: validator,
          obscureText: obsecuretext ?? false,
          decoration: InputDecoration( 
            hintText: hintext,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8.0),
           borderSide: BorderSide(color: Colors.grey, width: 2.0),
         ),
         contentPadding: EdgeInsets.symmetric(horizontal: 24,),
         enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8.0),
           borderSide: BorderSide(color: Colors.grey, width: 0.5),
         ),
         focusedBorder : OutlineInputBorder(
           borderRadius: BorderRadius.circular(8.0),
           borderSide: BorderSide(color: Colors.grey, width: 0.5),
         ),
            hintStyle: TextStyle(
                color:Color(0xFF999999),  fontSize: 16, fontWeight: FontWeight.normal, fontFamily: 'OpenSans' ),
            fillColor: fillcolor?? Color(0xFFF2F2F2),
            filled: true,
          ),
        ),
      ],
    ),
  );
}