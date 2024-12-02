import 'package:dio/dio.dart';

class ApiService{
  Dio dio;
  String baseUrl= "https://www.googleapis.com/books";
  ApiService(this.dio);
  Future <Map<String,dynamic>> get(String endPoint)async{
    var response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}