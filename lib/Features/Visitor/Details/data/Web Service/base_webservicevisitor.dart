import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/basevisitorentity.dart';
import 'package:injectable/injectable.dart';

abstract class BaseWebServiceVisitor {
  Future<BaseVisitorEntity> baseDetailsVisitor(int productID);
}

@Singleton(as: BaseWebServiceVisitor)
class BaseWebServiceVisitorImpl implements BaseWebServiceVisitor {
  final ApiConsumer _apiConsumer;

  BaseWebServiceVisitorImpl(this._apiConsumer);

  @override
  Future<BaseVisitorEntity> baseDetailsVisitor(int productID) async {
    final response = await _apiConsumer
        .get(EndPoints.productDetailsVisitorUrl + productID.toString());

    return BaseVisitorEntity.fromJson(response);
  }
}
