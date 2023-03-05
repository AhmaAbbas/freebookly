

import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api_services.dart';
import '../../../../errors/faulire.dart';
import '../models/BooK_Model.dart';
import 'homerepopatern.dart';

class HomeRepoImpl implements HomeRepo{
  HomeRepoImpl(this.api_services);
 final Api_Services api_services;
  @override
  Future<Either<Faulire, List<BooKModel>>> fetchNewestBooks() async{
    final Api_Services api;
    List<BooKModel> Books=[];
    try{
      var data=await api_services.get(endboint: "volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
     for(var item in data['items'])
       {
         Books.add(BooKModel.fromJson(item));
       }
     return Right(Books);
    }on Exception catch(e){
      if(e is DioError) {
        return Left(ServerFaulire.fromDioErro(e));
      }
    }
    return Left(ServerFaulire(e.toString()));
  }

  @override

  @override
  Future<Either<Faulire, List<BooKModel>>> fetchFeaturedBooks()async{
    List<BooKModel> Books=[];
    try{
      var data=await api_services.get(endboint: "volumes?Filtering=free-ebooks&S&q=computer science");
      for(var item in data['items'])
      {
        Books.add(BooKModel.fromJson(item));
      }
      return Right(Books);
    }on Exception catch(e){
      if(e is DioError) {
        return Left(ServerFaulire.fromDioErro(e));
      }
    }
    return Left(ServerFaulire(e.toString()));
  }

}