import 'dart:io';

import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/data/Model/transferentity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class TransferWebService {
  Future<TransferEntity> sendTransferImage(File transferImage);
}

@Singleton(as: TransferWebService)
class TransferWebServiceImpl implements TransferWebService {
  final ApiConsumer _apiConsumer;

  TransferWebServiceImpl(this._apiConsumer);

  Future<FormData> formAddFile(File transferImage) async {
    final formData = FormData.fromMap({
      'image[]': await MultipartFile.fromFile(transferImage.path),
    });
    return formData;
  }

  @override
  Future<TransferEntity> sendTransferImage(File transferImage) async {
    final fromData = await formAddFile(transferImage);
    final response = await _apiConsumer.post(
      "http://10.0.2.2:8000/api/order/transfer",
      body: fromData,
    );
    return TransferEntity.fromJson(response);
  }
}
