import 'package:belahododfinal/Core/api/api_consumer.dart';
import 'package:belahododfinal/Features/User/Details/data/Model/bookentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:injectable/injectable.dart';

abstract class BookWebService {
  Future<BookEntity> bookDetails();
}

@Singleton(as: BookWebService)
class BookWebServiceImpl implements BookWebService {
  final ApiConsumer _apiConsumer;
final ProductEntity _productentity;
  BookWebServiceImpl(this._apiConsumer,this._productentity);

  @override
  Future<BookEntity> bookDetails() async {
    final response =
        await _apiConsumer.get("http://localhost:8000/api/products/${_productentity.id}");

    return BookEntity.fromJson(response);
  }
}
