
import 'package:flutter/material.dart';
import 'package:freebookly/features/search/presentaion/views/widgets/serchlistview.dart';

import '../../../../../core/utls/styles.dart';
import '../../../../../core/widget/customtextformfeild.dart';


class SearchBody extends StatelessWidget {
  const SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Custom_Textformfeild(
          label_text: "serach",
          icon:Icons.search_rounded,
        ),
        SizedBox(height: 16,),
        Align(
          alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16
              ),
              child: Text("Search Result",style: Styles.titlestyle18,),
            )),
        SizedBox(height: 16,),
        Expanded(child: Search_ListView())
      ],
    );
  }
}
