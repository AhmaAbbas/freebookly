import 'package:flutter/material.dart';

import '../../../../../core/utls/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text("19.99\$",style: Styles.boldtitlestyle20,),
        Spacer(flex: 1,),
        Icon(Icons.star,color: Colors.yellowAccent,),
        SizedBox(width: 6.3,),
        Text("4.8",style: Styles.titlestyle16,),
        SizedBox(width:5,),
        Text("(2345)",style: Styles.titlestyle14.copyWith(color: Colors.grey),),
      ],
    );
  }
}