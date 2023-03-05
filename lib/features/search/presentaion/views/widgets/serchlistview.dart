
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/routers.dart';
import '../../../../home/presentaion/views/widgets/bestsellerlistviewitem.dart';

class Search_ListView extends StatelessWidget {
  const Search_ListView({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
        return GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRouters.kbookdetails);
            },
            child: BestSellerListView_Item());
      },
    );
  }
}
