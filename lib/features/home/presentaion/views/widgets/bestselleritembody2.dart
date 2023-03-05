
import 'package:flutter/material.dart';

import '../../../../../core/utls/styles.dart';
import 'rating.dart';

class BestsellerItembody2 extends StatelessWidget {
  const BestsellerItembody2({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.start,
      children: const[
        Text(
          "Harry Poter and the GobIet of fire",
          style: Styles.titlestyle20,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 3,),
        Text("J.K.Rowling",style: Styles.titlestyle14,),
        Rating()
      ],
    );
  }
}

