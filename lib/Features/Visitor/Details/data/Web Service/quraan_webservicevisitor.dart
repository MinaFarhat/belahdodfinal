import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/quraanvisitorentity.dart';
import 'package:injectable/injectable.dart';

abstract class QuraanWebServiceVisitor {
  Future<QuraanVisitorEntity> quraanDetailsVisitor(int productID);
}

@Singleton(as: QuraanWebServiceVisitor)
class QuraanWebServiceVisitorImpl implements QuraanWebServiceVisitor {
  final ApiConsumer _apiConsumer;

  QuraanWebServiceVisitorImpl(this._apiConsumer);

  @override
  Future<QuraanVisitorEntity> quraanDetailsVisitor(int productID) async {
    final response = await _apiConsumer
        .get(EndPoints.productDetailsVisitorUrl + productID.toString());

    return QuraanVisitorEntity.fromJson(response);
  }
}
