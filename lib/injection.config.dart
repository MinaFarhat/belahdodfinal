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
import 'Core/third_party_injection.dart' as _i91;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i75;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i24;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i25;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i14;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i78;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i45;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i46;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i31;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i70;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i69;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i53;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i54;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i34;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i35;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i28;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i29;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i18;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i32;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i16;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i26;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i74;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i84;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i86;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i63;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i68;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i67;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i81;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i82;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i51;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i52;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i64;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i65;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i58;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i59;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i17;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i33;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i21;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i30;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i71;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i90;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i60;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart' as _i88;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i85;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i76;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i77;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i48;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i47;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i27;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i36;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i72;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i89;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i66;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i61;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i62;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i19;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i20;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i12;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i55;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i49;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i50;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i23;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i80;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i40;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i41;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i43;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i44;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i22;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i39;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i73;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i83;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i37;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i38;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i15;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i79;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i56;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i57;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i42;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i87;

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
    gh.singleton<_i15.SendOrderWebService>(
        () => _i15.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.DeleteItemFromCartWebService>(
        () => _i16.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.BaseWebService>(
        () => _i17.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.AddtoCartWebService>(
        () => _i18.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.BaseRepositoryGetSubSections>(
        () => _i20.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i12.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i21.GameWebService>(
        () => _i21.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.DetailsofOfferWebService>(
        () => _i22.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.GetProductsofSubSectionWebService>(() =>
        _i23.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.BaseReposotryCreateAccount>(
        () => _i25.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i14.CreateAccountWebService>(),
            ));
    gh.singleton<_i26.QuantityUpdateWebService>(
        () => _i26.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i27.GetFavoritesWebService>(
        () => _i27.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i28.BaseRepositoryQuantityUpdate>(
        () => _i29.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i26.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i30.StationeryWebService>(
        () => _i30.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.LoginWebService>(
        () => _i31.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i32.CartItemsWebService>(
        () => _i32.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i33.BookWebService>(
        () => _i33.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i34.BaseRepositoryDeleteItemFromCart>(() =>
        _i35.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i16.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i36.AddToFavoritesWebService>(
        () => _i36.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i37.BaseRepositorySendOrder>(
        () => _i38.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i15.SendOrderWebService>(),
            ));
    gh.singleton<_i39.GetAllOffersWebService>(
        () => _i39.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i40.BaseRepositoryDetailsofOffer>(
        () => _i41.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i22.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i42.GetCitiesWebService>(
        () => _i42.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i43.BaseRepositoryGetAllOffers>(
        () => _i44.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i39.GetAllOffersWebService>(),
            ));
    gh.singleton<_i45.BaseReposotryLogin>(() => _i46.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i31.LoginWebService>(),
        ));
    gh.singleton<_i47.BaseRepositoryAddToFavorites>(
        () => _i48.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i36.AddToFavoritesWebService>(),
            ));
    gh.singleton<_i49.BaseRepositoryGetProductsOfSubSection>(
        () => _i50.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i23.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i51.BaseRepositoryGame>(() => _i52.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i21.GameWebService>(),
        ));
    gh.singleton<_i53.BaseRepositoryCartItems>(
        () => _i54.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i32.CartItemsWebService>(),
            ));
    gh.factory<_i55.GetsubsectionsCubit>(() =>
        _i55.GetsubsectionsCubit(gh<_i19.BaseRepositoryGetSubSections>()));
    gh.singleton<_i56.BaseRepositoryGetCities>(
        () => _i57.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i42.GetCitiesWebService>(),
            ));
    gh.singleton<_i58.BaseRepositoryStationery>(() => _i59.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i30.StationeryWebService>(),
        ));
    gh.factory<_i60.GameCubit>(
        () => _i60.GameCubit(gh<_i51.BaseRepositoryGame>()));
    gh.singleton<_i61.BaseRepositorySection>(() => _i62.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i13.SectionWebService>(),
        ));
    gh.factory<_i63.QuantitiyupdateCubit>(() =>
        _i63.QuantitiyupdateCubit(gh<_i28.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i64.BaseRepositoryQuraan>(() => _i65.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i66.SectionCubit>(
        () => _i66.SectionCubit(gh<_i61.BaseRepositorySection>()));
    gh.singleton<_i67.BaseRepositoryBase>(() => _i68.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i17.BaseWebService>(),
        ));
    gh.singleton<_i69.BaseRepositoryAddtoCart>(
        () => _i70.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i18.AddtoCartWebService>(),
            ));
    gh.factory<_i71.BaseCubit>(
        () => _i71.BaseCubit(gh<_i67.BaseRepositoryBase>()));
    gh.factory<_i72.AddtofavoriteCubit>(
        () => _i72.AddtofavoriteCubit(gh<_i47.BaseRepositoryAddToFavorites>()));
    gh.factory<_i73.DetailsofofferCubit>(() =>
        _i73.DetailsofofferCubit(gh<_i40.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i74.AddtocartCubit>(
        () => _i74.AddtocartCubit(gh<_i69.BaseRepositoryAddtoCart>()));
    gh.factory<_i75.CreateaccountCubit>(
        () => _i75.CreateaccountCubit(gh<_i24.BaseReposotryCreateAccount>()));
    gh.singleton<_i76.BaseRepositoryGetFavorites>(
        () => _i77.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i27.GetFavoritesWebService>(),
            ));
    gh.factory<_i78.LoginCubit>(() => _i78.LoginCubit(
          gh<_i45.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i79.SendOrderCubit>(
        () => _i79.SendOrderCubit(gh<_i37.BaseRepositorySendOrder>()));
    gh.factory<_i80.GetproductsofsubsectionCubit>(() =>
        _i80.GetproductsofsubsectionCubit(
            gh<_i49.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i81.BaseRepositoryBook>(() => _i82.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i33.BookWebService>(),
        ));
    gh.factory<_i83.GetalloffersCubit>(
        () => _i83.GetalloffersCubit(gh<_i43.BaseRepositoryGetAllOffers>()));
    gh.factory<_i84.CartitemsCubit>(
        () => _i84.CartitemsCubit(gh<_i53.BaseRepositoryCartItems>()));
    gh.factory<_i85.StationeryCubit>(
        () => _i85.StationeryCubit(gh<_i58.BaseRepositoryStationery>()));
    gh.factory<_i86.DeleteitemfromcartCubit>(() => _i86.DeleteitemfromcartCubit(
        gh<_i34.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i87.GetCitiesCubit>(
        () => _i87.GetCitiesCubit(gh<_i56.BaseRepositoryGetCities>()));
    gh.factory<_i88.QuraanCubit>(
        () => _i88.QuraanCubit(gh<_i64.BaseRepositoryQuraan>()));
    gh.factory<_i89.GetfavoritesCubit>(
        () => _i89.GetfavoritesCubit(gh<_i76.BaseRepositoryGetFavorites>()));
    gh.factory<_i90.BookCubit>(
        () => _i90.BookCubit(gh<_i81.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i91.ThirdPartyInjection {}
