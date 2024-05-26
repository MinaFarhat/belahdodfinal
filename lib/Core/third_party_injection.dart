import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class ThirdPartyInjection {
  @singleton
  Dio get dio => Dio();

  @singleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @singleton
  SharedPreferencesUtils get sharedPreferencesUtils => SharedPreferencesUtils();
}
