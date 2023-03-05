
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/assets.dart';
import '../../../../../core/utls/routers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
      child: Row(
        children: [
          Image.asset(Assets.logo,height: 24,),
          const Spacer(flex: 1,),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouters.ksearch);
          }, icon: const Icon(Icons.search_rounded,size: 28,))
        ],
      ),
    );
  }
}