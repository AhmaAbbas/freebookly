

import 'package:go_router/go_router.dart';

import '../../features/home/presentaion/views/bookdetails.dart';
import '../../features/home/presentaion/views/home.dart';
import '../../features/search/presentaion/views/search.dart';
import '../../features/splash/presentation/views/splashview.dart';

abstract class AppRouters{
  static String khomeview='/homeView';
  static String kbookdetails='/bookDetails';
  static String ksearch='/search';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeview,
        builder: (context, state) => const  Home_View(),
      ),
      GoRoute(
        path: kbookdetails,
        builder: (context, state) => const  BookDetails(),
      ),
      GoRoute(path: ksearch,
        builder: (context,state) =>const Search(),
      )
    ],
  );

}