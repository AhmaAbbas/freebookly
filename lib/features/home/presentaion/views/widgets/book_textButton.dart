import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';

class Book_TextButton extends StatelessWidget {
  const Book_TextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
         Expanded(
           child: Custom_Button(
             onpressed: (){},
           data: "19.99\$",
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft:Radius.circular(16),
            ),
            fontsize: 20,
            fontWeight: FontWeight.bold,
            textbuttcolor: Colors.white,
            textcolor: Colors.black,
        ),
         ),
       Expanded(
         child: Custom_Button(
            onpressed: (){},
            data: "FreeBook",
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight:Radius.circular(16),
            ),
            fontsize: 20,
            fontWeight: FontWeight.bold,
            textbuttcolor:Color(0xffEf8262),
            textcolor: Colors.white,
          ),
       ),
      ],
    );
  }
}
