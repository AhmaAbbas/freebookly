import 'package:flutter/material.dart';

import 'CustomListViewItem.dart';
import 'best_sellerlistview.dart';

class BookDetails_ListView extends StatelessWidget {
  const BookDetails_ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context,index){
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 5),
              child: CustomListView_Item(
                  imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA8w3pX8w5_V81iRBE_sM2paa5hsf6M3X9Og&usqp=CAU"),
            );
          }),
    );
  }
}
