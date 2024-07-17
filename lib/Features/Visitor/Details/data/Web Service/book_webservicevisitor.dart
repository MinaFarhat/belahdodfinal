import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/Visitor/Details/data/Model/bookvisitorentity.dart';
import 'package:injectable/injectable.dart';

abstract class BookWebServiceVisitor {
  Future<BookVisitorEntity> bookDetailsVisitor(int productID);
}

@Singleton(as: BookWebServiceVisitor)
class BookWebServiceVisitorImpl implements BookWebServiceVisitor {
  final ApiConsumer _apiConsumer;

  BookWebServiceVisitorImpl(this._apiConsumer);

  @override
  Future<BookVisitorEntity> bookDetailsVisitor(int productID) async {
    final response = await _apiConsumer
        .get(EndPoints.productDetailsVisitorUrl + productID.toString());

    return BookVisitorEntity.fromJson(response);
  }
}
