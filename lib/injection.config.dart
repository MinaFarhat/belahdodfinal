// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'Core/api/api_consumer.dart' as _i9;
import 'Core/api/dio_consumer.dart' as _i10;
import 'Core/api/logging_interceptor.dart' as _i3;
import 'Core/error/error_interceptor.dart' as _i4;
import 'Core/Network/network_info.dart' as _i8;
import 'Core/third_party_injection.dart' as _i43;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i36;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i16;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i17;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i13;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i37;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i21;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i22;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i19;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i34;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i33;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i38;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i39;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i23;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i24;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i30;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i31;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i25;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i26;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i14;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i20;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i15;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i18;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i35;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i42;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i27;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart' as _i41;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i40;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i32;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i28;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i29;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.singleton<_i3.LoggingInterceptor>(() => _i3.LoggingInterceptor());
    gh.singleton<_i4.ErrorInterceptor>(() => _i4.ErrorInterceptor());
    gh.singleton<_i5.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i6.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i7.SharedPreferencesUtils>(
        () => thirdPartyInjection.sharedPreferencesUtils);
    gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.singleton<_i9.ApiConsumer>(() => _i10.DioConsumer(gh<_i5.Dio>()));
    gh.singleton<_i11.QuraanWebService>(
        () => _i11.QuraanWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i12.SectionWebService>(
        () => _i12.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.CreateAccountWebService>(
        () => _i13.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i14.BaseWebService>(
        () => _i14.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.GameWebService>(
        () => _i15.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.BaseReposotryCreateAccount>(
        () => _i17.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i13.CreateAccountWebService>(),
            ));
    gh.singleton<_i18.StationeryWebService>(
        () => _i18.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.LoginWebService>(
        () => _i19.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.BookWebService>(
        () => _i20.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.BaseReposotryLogin>(() => _i22.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i19.LoginWebService>(),
        ));
    gh.singleton<_i23.BaseRepositoryGame>(() => _i24.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i15.GameWebService>(),
        ));
    gh.singleton<_i25.BaseRepositoryStationery>(() => _i26.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i18.StationeryWebService>(),
        ));
    gh.factory<_i27.GameCubit>(
        () => _i27.GameCubit(gh<_i23.BaseRepositoryGame>()));
    gh.singleton<_i28.BaseRepositorySection>(() => _i29.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i12.SectionWebService>(),
        ));
    gh.singleton<_i30.BaseRepositoryQuraan>(() => _i31.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i32.SectionCubit>(
        () => _i32.SectionCubit(gh<_i28.BaseRepositorySection>()));
    gh.singleton<_i33.BaseRepositoryBase>(() => _i34.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i14.BaseWebService>(),
        ));
    gh.factory<_i35.BaseCubit>(
        () => _i35.BaseCubit(gh<_i33.BaseRepositoryBase>()));
    gh.factory<_i36.CreateaccountCubit>(
        () => _i36.CreateaccountCubit(gh<_i16.BaseReposotryCreateAccount>()));
    gh.factory<_i37.LoginCubit>(() => _i37.LoginCubit(
          gh<_i21.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.singleton<_i38.BaseRepositoryBook>(() => _i39.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i20.BookWebService>(),
        ));
    gh.factory<_i40.StationeryCubit>(
        () => _i40.StationeryCubit(gh<_i25.BaseRepositoryStationery>()));
    gh.factory<_i41.QuraanCubit>(
        () => _i41.QuraanCubit(gh<_i30.BaseRepositoryQuraan>()));
    gh.factory<_i42.BookCubit>(
        () => _i42.BookCubit(gh<_i38.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i43.ThirdPartyInjection {}
