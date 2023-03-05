
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../core/utls/assets.dart';
import '../../../../core/utls/routers.dart';
import 'slidingtext.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
  super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    super.initState();
    initslidinganimation();
    // slidinganimation.addListener(() {
    //   setState(() {
    //
    //   });
    // });
    transitiontohomepage();
  }




  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(height: 4,),
       SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }
  void initslidinganimation() {
    animationController=AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidinganimation=Tween<Offset>(begin:Offset(0,10) ,end:Offset.zero).animate(animationController);
    animationController.forward();
  }
  void transitiontohomepage() {
    Future.delayed(const Duration(seconds: 2),(){
      // Get.to(()=>const Home_View(),transition: Transition.fade,duration: ktransitionduration);
      GoRouter.of(context).push(AppRouters.khomeview);
    });
  }
}

