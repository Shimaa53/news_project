
import 'package:dio/dio.dart';

import 'end_point.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions
        (
          baseUrl: baseUrl,
          receiveDataWhenStatusError: true,
          headers: {
            "Content_Type": "application/json",
            "Accept": "application/json",
          }
      ),

    );
  }

  static Future<Response> getData({
    required String url,
    String? token,
    Map<String, dynamic>? queryParameters,
  }) async
  {
    try {
      dio.options.headers = {
        "Authorization": " Bearer ${token ?? " "}"
      };
      final Response response = await dio.get(url,
        queryParameters: queryParameters,

      );
      return response;
    } on DioError catch (error) {
      print(error);
      rethrow;
    }
  }


  Future<Response>postData({
    required String url,
    String? token,
    required Map<String,dynamic> data ,

  })async{
    try{
      dio.options.headers={
        "Authorization": " Bearer ${token ?? " "}"
      };
      Response response= await dio.post(url,
          data: data);
      return response;
    }
    on DioError catch(error) {
      print(error);
      rethrow;
    }
  }

  Future<Response>putData({
    required String url,
    String? token,
    required Map<String,dynamic> data ,

  })async{
    try{
      dio.options.headers={
        "Authorization": " Bearer ${token ?? " "}"
      };
      Response response= await dio.put(url,
          data: data);
      return response;
    }
    on DioError catch(error) {
      print(error);
      rethrow;
    }
  }

  Future<Response>deleteData({
    required String url,
    String? token,
    Map<String,dynamic>? data ,

  })async{
    try{
      dio.options.headers={
        "Authorization": " Bearer ${token ?? " "}"
      };
      Response response= await dio.delete(url,
          data: data);
      return response;
    }
    on DioError catch(error) {
      print(error);
      rethrow;
    }
  }



}

