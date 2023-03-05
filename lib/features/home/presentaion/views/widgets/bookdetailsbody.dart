
import 'package:flutter/material.dart';
import 'package:freebookly/features/home/presentaion/views/widgets/rating_bookdetails.dart';

import '../../../../../core/utls/styles.dart';
import 'CustomListViewItem.dart';
import 'book_textButton.dart';

import 'booksdetails_listview.dart';
import 'customappbarbookdetails.dart';


class BookDetails_Body extends StatelessWidget {
  const BookDetails_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppbarBookDetails(),
                Padding(
                  padding: EdgeInsets.only(
                    left: width*0.17,
                    right: width*0.17,
                  ),
                  child:  CustomListView_Item(
                      imageurl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA8w3pX8w5_V81iRBE_sM2paa5hsf6M3X9Og&usqp=CAU"),
                ),
                const SizedBox(height: 35,),
                Text("The Jungle Book",style: Styles.titlestyle30.copyWith(
                  fontWeight: FontWeight.bold,
                ),),
                const SizedBox(height: 9,),
                Opacity(
                  opacity: 0.7,
                  child: Text("Rudyard Kipling",style: Styles.titlestyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                const SizedBox(height: 9,),
                const Rating_BookDetails(),
                const SizedBox(height:11,),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 26),
                  child:  Book_TextButton(),
                ),
                Expanded(child: const SizedBox(height:11,)),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("You can Also like",style: Styles.titlestyle16,)),
                const SizedBox(height:11,),
                BookDetails_ListView(),
                const SizedBox(height:40,),
              ],
            ),
          ),
        )
      ],
    );
  }


}
