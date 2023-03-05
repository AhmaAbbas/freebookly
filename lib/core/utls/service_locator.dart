
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/homerepo/homerepo_implementaion.dart';
import '../api_services.dart';

final getit=GetIt.instance;
void setup(){
  getit.registerSingleton<Api_Services>(Api_Services(Dio()));
  getit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      getit.get<Api_Services>(),
  ));
}