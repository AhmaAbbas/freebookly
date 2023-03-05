
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/featuredBooksstates/featuredbooks_cubit.dart';
import '../../manger/featuredBooksstates/featuredbooks_state.dart';
import 'CustomListViewItem.dart';
import 'custom_faulire.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooks_Cubit,FeaturedBooks_States>(
      builder:(context,state)
        {
          if(state is Succes_FeaturdBooksState)
            {
              return SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.Books.length,
                    itemBuilder: (context,index){
                      return  Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 4),
                        child: CustomListView_Item(imageurl: state.Books[index].volumeInfo!.imageLinks!.thumbnail!),
                      );
                    }),
              );
            }
          else if(state is Faulire_FeaturdBooksState)
            {
              return CustomError(error: state.error);
            }
          else
            {
              return const Center(child: CircularProgressIndicator(),);
            }
        }

    );
  }
}
