import 'package:dio/dio.dart';
import 'package:task1/core/networking/dio_client.dart';

class ApiService {
  final DioClient dioClient = DioClient();
  Future<Response> getData(String endpoint) async {
      final response = await dioClient.dio.get(endpoint);
      return response;
    
  }
}
