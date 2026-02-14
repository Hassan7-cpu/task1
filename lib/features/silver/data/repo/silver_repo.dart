import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task1/core/networking/api_constant.dart';
import 'package:task1/core/networking/api_error.dart';
import 'package:task1/core/networking/api_services.dart';
import 'package:task1/features/silver/data/models/silver_model.dart';

class SilverRepo {
  final ApiService apiService=ApiService();
  Future<Either<String, SilverModel>> getSilver() async {
       try {
  final Response response=await apiService.getData(ApiConstant.silverEndpoint);
  return Right(SilverModel.fromJson(response.data));
} on Exception catch (e) {
  return Left(ApiError(message: e.toString()).toString());
}
  }
}