import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/bookentity.dart';
import 'package:injectable/injectable.dart';

abstract class BookWebService {
  Future<BookEntity> bookDetails(int productID);
}

@Singleton(as: BookWebService)
class BookWebServiceImpl implements BookWebService {
  final ApiConsumer _apiConsumer;

  BookWebServiceImpl(this._apiConsumer);

  @override
  Future<BookEntity> bookDetails(int productID) async {
    final response = await _apiConsumer
        .get(EndPoints.productDetailsUrl + productID.toString());

    return BookEntity.fromJson(response);
  }
}
