import 'package:dio/dio.dart';

class Api_Services{
  Api_Services(this.dio);
  final baseurl="https://www.googleapis.com/books/v1/";
  final Dio dio;
  //Api_Services({required this.dio});
  Future<Map<String,dynamic>> get({required String endboint})async{
    var response=await dio.get("$baseurl$endboint");
    return response.data;
  }
}