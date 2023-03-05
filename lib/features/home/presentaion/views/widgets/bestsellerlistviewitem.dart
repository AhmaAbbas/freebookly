
import 'package:flutter/material.dart';

import '../../../../../core/utls/assets.dart';
import 'bestselleritembody2.dart';

class BestSellerListView_Item extends StatelessWidget {
  const BestSellerListView_Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 8),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image:AssetImage(Assets.test_image),
                    )
                ),
              ),
            ),
            SizedBox(width: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width *.5,
              child: BestsellerItembody2(),
            ),

          ],
        ),
      ),
    );
  }
}


