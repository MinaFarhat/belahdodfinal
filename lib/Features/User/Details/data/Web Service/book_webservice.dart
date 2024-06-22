import 'package:belahododfinal/Core/api/api_consumer.dart';
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
    final response =
        await _apiConsumer.get("http://10.0.2.2:8000/api/products/$productID");

    return BookEntity.fromJson(response);
  }
}
