import 'package:dio/dio.dart';
import 'package:task1/core/networking/api_constant.dart';

class DioClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstant.baseUrl,   
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ),
  );
  }