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
import 'Core/third_party_injection.dart' as _i23;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i21;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i13;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i14;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i12;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i22;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i16;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i17;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i15;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i20;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i18;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i19;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i11;

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
    gh.singleton<_i11.SectionWebService>(
        () => _i11.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i12.CreateAccountWebService>(
        () => _i12.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.BaseReposotryCreateAccount>(
        () => _i14.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i12.CreateAccountWebService>(),
            ));
    gh.singleton<_i15.LoginWebService>(
        () => _i15.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.BaseReposotryLogin>(() => _i17.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i15.LoginWebService>(),
        ));
    gh.singleton<_i18.BaseRepositorySection>(() => _i19.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i11.SectionWebService>(),
        ));
    gh.factory<_i20.SectionCubit>(
        () => _i20.SectionCubit(gh<_i18.BaseRepositorySection>()));
    gh.factory<_i21.CreateaccountCubit>(
        () => _i21.CreateaccountCubit(gh<_i13.BaseReposotryCreateAccount>()));
    gh.factory<_i22.LoginCubit>(() => _i22.LoginCubit(
          gh<_i16.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    return this;
  }
}

class _$ThirdPartyInjection extends _i23.ThirdPartyInjection {}
