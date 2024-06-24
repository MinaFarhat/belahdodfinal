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
import 'Core/third_party_injection.dart' as _i55;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i46;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i18;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i19;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i13;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i47;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i26;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i27;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i21;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i43;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i42;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i30;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i31;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i24;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i25;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i16;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i22;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i14;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i45;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i50;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i52;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i41;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i40;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i48;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i49;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i28;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i29;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i37;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i38;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i32;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i33;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i15;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i23;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i17;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i20;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i44;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i54;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i34;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart' as _i53;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i51;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i39;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i35;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i36;
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
    gh.singleton<_i14.DeleteItemFromCartWebService>(
        () => _i14.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.BaseWebService>(
        () => _i15.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.AddtoCartWebService>(
        () => _i16.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.GameWebService>(
        () => _i17.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.BaseReposotryCreateAccount>(
        () => _i19.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i13.CreateAccountWebService>(),
            ));
    gh.singleton<_i20.StationeryWebService>(
        () => _i20.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.LoginWebService>(
        () => _i21.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.CartItemsWebService>(
        () => _i22.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.BookWebService>(
        () => _i23.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.BaseRepositoryDeleteItemFromCart>(() =>
        _i25.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i14.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i26.BaseReposotryLogin>(() => _i27.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i21.LoginWebService>(),
        ));
    gh.singleton<_i28.BaseRepositoryGame>(() => _i29.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i17.GameWebService>(),
        ));
    gh.singleton<_i30.BaseRepositoryCartItems>(
        () => _i31.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i22.CartItemsWebService>(),
            ));
    gh.singleton<_i32.BaseRepositoryStationery>(() => _i33.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i20.StationeryWebService>(),
        ));
    gh.factory<_i34.GameCubit>(
        () => _i34.GameCubit(gh<_i28.BaseRepositoryGame>()));
    gh.singleton<_i35.BaseRepositorySection>(() => _i36.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i12.SectionWebService>(),
        ));
    gh.singleton<_i37.BaseRepositoryQuraan>(() => _i38.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i39.SectionCubit>(
        () => _i39.SectionCubit(gh<_i35.BaseRepositorySection>()));
    gh.singleton<_i40.BaseRepositoryBase>(() => _i41.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i15.BaseWebService>(),
        ));
    gh.singleton<_i42.BaseRepositoryAddtoCart>(
        () => _i43.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i16.AddtoCartWebService>(),
            ));
    gh.factory<_i44.BaseCubit>(
        () => _i44.BaseCubit(gh<_i40.BaseRepositoryBase>()));
    gh.factory<_i45.AddtocartCubit>(
        () => _i45.AddtocartCubit(gh<_i42.BaseRepositoryAddtoCart>()));
    gh.factory<_i46.CreateaccountCubit>(
        () => _i46.CreateaccountCubit(gh<_i18.BaseReposotryCreateAccount>()));
    gh.factory<_i47.LoginCubit>(() => _i47.LoginCubit(
          gh<_i26.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.singleton<_i48.BaseRepositoryBook>(() => _i49.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i23.BookWebService>(),
        ));
    gh.factory<_i50.CartitemsCubit>(
        () => _i50.CartitemsCubit(gh<_i30.BaseRepositoryCartItems>()));
    gh.factory<_i51.StationeryCubit>(
        () => _i51.StationeryCubit(gh<_i32.BaseRepositoryStationery>()));
    gh.factory<_i52.DeleteitemfromcartCubit>(() => _i52.DeleteitemfromcartCubit(
        gh<_i24.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i53.QuraanCubit>(
        () => _i53.QuraanCubit(gh<_i37.BaseRepositoryQuraan>()));
    gh.factory<_i54.BookCubit>(
        () => _i54.BookCubit(gh<_i48.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i55.ThirdPartyInjection {}
