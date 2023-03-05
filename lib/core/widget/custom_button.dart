import 'package:flutter/material.dart';

import '../utls/consts.dart';

class Custom_Button extends StatelessWidget {
   const Custom_Button({Key? key,
     required this.borderRadius,
     required this.fontWeight,
     required this.data,
     required this.onpressed,
     required this.fontsize,
     required this.textbuttcolor,
     required this.textcolor
   }) : super(key: key);
  final Function() onpressed;
  final String data;
  final FontWeight fontWeight;
  final double fontsize;
  final Color textbuttcolor;
  final Color textcolor;
  final BorderRadius borderRadius;


  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed:onpressed ,
        style: TextButton.styleFrom(
          backgroundColor:textbuttcolor ,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          )
        ),
        child: Text(
          data,
          style: TextStyle(
            fontWeight:fontWeight ,
            fontSize: fontsize,
            color: textcolor,
            fontFamily: kGTSectraFine,
          ),
        ),
    );
  }
}
