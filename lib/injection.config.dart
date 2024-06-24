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
import 'Core/third_party_injection.dart' as _i75;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i62;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i22;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i23;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i14;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i65;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i35;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i36;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i29;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i58;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i57;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i43;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i44;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i32;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i33;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i26;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i27;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i17;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i30;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i15;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i24;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i61;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i69;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i71;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i51;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i56;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i55;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i67;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i68;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i41;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i42;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i52;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i53;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i46;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i47;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i16;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i31;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i20;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i28;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i59;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i74;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i48;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart' as _i72;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i70;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i63;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i64;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i38;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i37;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i25;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i34;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i60;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i73;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i54;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i49;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i50;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i18;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i19;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i12;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i45;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i39;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i40;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i21;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i66;

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
    gh.singleton<_i12.GetSubSectionsWebService>(
        () => _i12.GetSubSectionsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.SectionWebService>(
        () => _i13.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i14.CreateAccountWebService>(
        () => _i14.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.DeleteItemFromCartWebService>(
        () => _i15.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.BaseWebService>(
        () => _i16.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.AddtoCartWebService>(
        () => _i17.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.BaseRepositoryGetSubSections>(
        () => _i19.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i12.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i20.GameWebService>(
        () => _i20.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.GetProductsofSubSectionWebService>(() =>
        _i21.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.BaseReposotryCreateAccount>(
        () => _i23.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i14.CreateAccountWebService>(),
            ));
    gh.singleton<_i24.QuantityUpdateWebService>(
        () => _i24.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.GetFavoritesWebService>(
        () => _i25.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.BaseRepositoryQuantityUpdate>(
        () => _i27.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i24.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i28.StationeryWebService>(
        () => _i28.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i29.LoginWebService>(
        () => _i29.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i30.CartItemsWebService>(
        () => _i30.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.BookWebService>(
        () => _i31.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i32.BaseRepositoryDeleteItemFromCart>(() =>
        _i33.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i15.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i34.AddToFavoritesWebService>(
        () => _i34.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i35.BaseReposotryLogin>(() => _i36.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i29.LoginWebService>(),
        ));
    gh.singleton<_i37.BaseRepositoryAddToFavorites>(
        () => _i38.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i34.AddToFavoritesWebService>(),
            ));
    gh.singleton<_i39.BaseRepositoryGetProductsOfSubSection>(
        () => _i40.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i21.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i41.BaseRepositoryGame>(() => _i42.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i20.GameWebService>(),
        ));
    gh.singleton<_i43.BaseRepositoryCartItems>(
        () => _i44.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i30.CartItemsWebService>(),
            ));
    gh.factory<_i45.GetsubsectionsCubit>(() =>
        _i45.GetsubsectionsCubit(gh<_i18.BaseRepositoryGetSubSections>()));
    gh.singleton<_i46.BaseRepositoryStationery>(() => _i47.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i28.StationeryWebService>(),
        ));
    gh.factory<_i48.GameCubit>(
        () => _i48.GameCubit(gh<_i41.BaseRepositoryGame>()));
    gh.singleton<_i49.BaseRepositorySection>(() => _i50.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i13.SectionWebService>(),
        ));
    gh.factory<_i51.QuantitiyupdateCubit>(() =>
        _i51.QuantitiyupdateCubit(gh<_i26.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i52.BaseRepositoryQuraan>(() => _i53.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i54.SectionCubit>(
        () => _i54.SectionCubit(gh<_i49.BaseRepositorySection>()));
    gh.singleton<_i55.BaseRepositoryBase>(() => _i56.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i16.BaseWebService>(),
        ));
    gh.singleton<_i57.BaseRepositoryAddtoCart>(
        () => _i58.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i17.AddtoCartWebService>(),
            ));
    gh.factory<_i59.BaseCubit>(
        () => _i59.BaseCubit(gh<_i55.BaseRepositoryBase>()));
    gh.factory<_i60.AddtofavoriteCubit>(
        () => _i60.AddtofavoriteCubit(gh<_i37.BaseRepositoryAddToFavorites>()));
    gh.factory<_i61.AddtocartCubit>(
        () => _i61.AddtocartCubit(gh<_i57.BaseRepositoryAddtoCart>()));
    gh.factory<_i62.CreateaccountCubit>(
        () => _i62.CreateaccountCubit(gh<_i22.BaseReposotryCreateAccount>()));
    gh.singleton<_i63.BaseRepositoryGetFavorites>(
        () => _i64.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i25.GetFavoritesWebService>(),
            ));
    gh.factory<_i65.LoginCubit>(() => _i65.LoginCubit(
          gh<_i35.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i66.GetproductsofsubsectionCubit>(() =>
        _i66.GetproductsofsubsectionCubit(
            gh<_i39.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i67.BaseRepositoryBook>(() => _i68.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i31.BookWebService>(),
        ));
    gh.factory<_i69.CartitemsCubit>(
        () => _i69.CartitemsCubit(gh<_i43.BaseRepositoryCartItems>()));
    gh.factory<_i70.StationeryCubit>(
        () => _i70.StationeryCubit(gh<_i46.BaseRepositoryStationery>()));
    gh.factory<_i71.DeleteitemfromcartCubit>(() => _i71.DeleteitemfromcartCubit(
        gh<_i32.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i72.QuraanCubit>(
        () => _i72.QuraanCubit(gh<_i52.BaseRepositoryQuraan>()));
    gh.factory<_i73.GetfavoritesCubit>(
        () => _i73.GetfavoritesCubit(gh<_i63.BaseRepositoryGetFavorites>()));
    gh.factory<_i74.BookCubit>(
        () => _i74.BookCubit(gh<_i67.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i75.ThirdPartyInjection {}
