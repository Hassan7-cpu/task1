import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task1/core/networking/api_constant.dart';
import 'package:task1/core/networking/api_error.dart';
import 'package:task1/core/networking/api_services.dart';
import 'package:task1/features/gold/data/models/gold_model.dart';

class GoldRepo {
  final ApiService apiService=ApiService();
  Future<Either<String, GoldModel>> getGold() async {
       try {
  final Response response=await apiService.getData(ApiConstant.goldEndpoint);
  return Right(GoldModel.fromJson(response.data));
} on Exception catch (e) {
  return Left(ApiError(message: e.toString()).toString());
}
  }
}