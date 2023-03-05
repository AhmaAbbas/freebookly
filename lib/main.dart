
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utls/consts.dart';
import 'core/utls/routers.dart';
import 'core/utls/service_locator.dart';
import 'features/home/data/homerepo/homerepo_implementaion.dart';
import 'features/home/presentaion/manger/featuredBooksstates/featuredbooks_cubit.dart';
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) =>FeaturedBooks_Cubit(getit.get<HomeRepoImpl>()..fetchFeaturedBooks()) ),
        BlocProvider(create: (context)=>FeaturedBooks_Cubit(getit.get<HomeRepoImpl>()..fetchNewestBooks())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme:ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ) ,
      ),
    );
  }
}




