import 'dart:io';
import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/wallet/data/model/addbalanceentity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class AddBalanceWebService {
  Future<AddBalanceEntity> addBalance(File image);
}

@Singleton(as: AddBalanceWebService)
class AddBalanceWebServiceImpl implements AddBalanceWebService {
  final ApiConsumer _apiConsumer;

  AddBalanceWebServiceImpl(this._apiConsumer);

  Future<FormData> formAddFile(File transferImage) async {
    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(transferImage.path),
    });
    return formData;
  }

  @override
  Future<AddBalanceEntity> addBalance(File image) async {
    final fromData = await formAddFile(image);
    final response = await _apiConsumer.post(
      EndPoints.addBalanceUrl,
      body: fromData,
    );
    return AddBalanceEntity.fromJson(response);
  }
}
