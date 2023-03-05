
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/routers.dart';
import '../../manger/newestbooks/newestbooks_cubit.dart';
import '../../manger/newestbooks/newestbooks_states.dart';
import 'bestsellerlistviewitem.dart';
import 'custom_faulire.dart';

class BestSeller_ListView extends StatelessWidget {
  const BestSeller_ListView({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooks_Cubit,NewsetBooks_States>(
      builder:(context,state){
        if(state is Succes_NewsetBooks_State)
          {
            return  ListView.builder(
              shrinkWrap:true ,
              physics:const NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context,index){
                return GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouters.kbookdetails);
                    },
                    child: BestSellerListView_Item());
              },
            );
          }
        else if(state is Faulire_NewsetBooks_State)
          {
            return  CustomError(error: state.error);
          }
        else
          {
            return const Center(child: CircularProgressIndicator(),);
          }
      }
    );
  }
}
