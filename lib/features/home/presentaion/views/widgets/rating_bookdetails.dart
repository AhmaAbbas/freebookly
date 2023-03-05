import 'package:flutter/material.dart';

import '../../../../../core/utls/styles.dart';

class Rating_BookDetails extends StatelessWidget {
  const Rating_BookDetails({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star,color: Colors.yellowAccent,),
        SizedBox(width: 6.3,),
        Text("4.8",style: Styles.titlestyle16,),
        SizedBox(width:5,),
        Text("(2345)",style: Styles.titlestyle14.copyWith(color: Colors.grey),),
      ],
    );
  }
}