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
import 'Core/third_party_injection.dart' as _i151;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i114;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i42;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i43;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i19;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i126;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i70;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i71;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i49;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i106;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i105;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i78;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i79;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i54;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i55;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i46;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i47;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i29;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i50;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i24;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i44;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i110;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i135;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i139;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i92;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i99;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i98;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i131;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i132;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i76;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i77;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i93;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i94;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i83;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i84;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i28;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i51;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i34;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i48;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i107;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i150;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i85;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart'
    as _i147;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i138;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i120;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i121;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i73;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i72;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i45;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i56;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i108;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i148;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i95;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i86;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i87;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i15;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart'
    as _i37;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/getproductsmainsectionrepository.dart'
    as _i38;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart'
    as _i23;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart'
    as _i61;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i31;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i32;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i80;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i74;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i75;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i36;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i130;
import 'Features/User/news/data/Repostry/Ads/adsrepository.dart' as _i26;
import 'Features/User/news/data/Repostry/Ads/baserepositoryads.dart' as _i25;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i63;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i64;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i68;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i69;
import 'Features/User/news/data/Repostry/News/baserepositorynews.dart' as _i122;
import 'Features/User/news/data/Repostry/News/newsrepository.dart' as _i123;
import 'Features/User/news/data/Web%20Service/Ads/adswebservice.dart' as _i14;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i35;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i60;
import 'Features/User/news/data/Web%20Service/News/newswebservice.dart' as _i27;
import 'Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart' as _i39;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i109;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i134;
import 'Features/User/news/Manager/News%20Cubit/news_cubit.dart' as _i143;
import 'Features/User/note/cubit/get_notifications_cubit.dart' as _i145;
import 'Features/User/note/data/Repostry/baserepositorygetnotifications.dart'
    as _i112;
import 'Features/User/note/data/Repostry/getnotificationsentity.dart' as _i113;
import 'Features/User/note/data/Web%20Service/getnotificationswebservice.dart'
    as _i21;
import 'Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart'
    as _i124;
import 'Features/User/Orders/main%20orders/data/Repostry/getordersrepository.dart'
    as _i125;
import 'Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart'
    as _i57;
import 'Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart'
    as _i140;
import 'Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart'
    as _i66;
import 'Features/User/Orders/Order%20Details/data/Repostry/orderdetailsrepository.dart'
    as _i67;
import 'Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart'
    as _i20;
import 'Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart'
    as _i128;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i58;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i59;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i22;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i129;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart'
    as _i136;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/onarrivalrepository.dart'
    as _i137;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart'
    as _i90;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/transferrepository.dart'
    as _i91;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart'
    as _i62;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart'
    as _i40;
import 'Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart'
    as _i141;
import 'Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart'
    as _i111;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart'
    as _i101;
import 'Features/User/search/Normal%20Search/data/Repository/searchresultsrepository.dart'
    as _i102;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchresultswebservice.dart'
    as _i41;
import 'Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart'
    as _i142;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart'
    as _i117;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositoryvisitor.dart'
    as _i118;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart'
    as _i115;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/bookrepositoryvisitor.dart'
    as _i116;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/baserepositorygamevisitor.dart'
    as _i52;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/gamerepositoryvisitor.dart'
    as _i53;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart'
    as _i96;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/quraanrepositoryvisitor.dart'
    as _i97;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart'
    as _i88;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/stationeryrepositoryvisitor.dart'
    as _i89;
import 'Features/Visitor/Details/data/Web%20Service/base_webservicevisitor.dart'
    as _i17;
import 'Features/Visitor/Details/data/Web%20Service/book_webservicevisitor.dart'
    as _i30;
import 'Features/Visitor/Details/data/Web%20Service/game_webservicevisitor.dart'
    as _i33;
import 'Features/Visitor/Details/data/Web%20Service/quraan_webservicevisitor.dart'
    as _i16;
import 'Features/Visitor/Details/data/Web%20Service/stationery_webservicevisitor.dart'
    as _i12;
import 'Features/Visitor/Details/Manager/Base%20Visitor%20Cubit/base_visitor_cubit.dart'
    as _i119;
import 'Features/Visitor/Details/Manager/Book%20Visitor%20Cubit/book_visitor_cubit.dart'
    as _i127;
import 'Features/Visitor/Details/Manager/Game%20Visitor%20Cubit/game_visitor_cubit.dart'
    as _i100;
import 'Features/Visitor/Details/Manager/Quraan%20Visitor%20Cubit/quraan_visitor_cubit.dart'
    as _i133;
import 'Features/Visitor/Details/Manager/Stationery%20Visitor%20Cbit/stationery_visitor_cubit.dart'
    as _i149;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/cubit/section_visitor_cubit.dart'
    as _i146;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart'
    as _i103;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/sectionvisitorrepository.dart'
    as _i104;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Web%20Service/sectionvisitorwebservice.dart'
    as _i18;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i81;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i82;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i65;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i144;

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
    gh.singleton<_i12.StationeryWebServiceVisitor>(
        () => _i12.StationeryWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.GetSubSectionsWebService>(
        () => _i13.GetSubSectionsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i14.AdsWebService>(
        () => _i14.AdsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.SectionWebService>(
        () => _i15.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.QuraanWebServiceVisitor>(
        () => _i16.QuraanWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.BaseWebServiceVisitor>(
        () => _i17.BaseWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.SectionVisitorWebService>(
        () => _i18.SectionVisitorWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.CreateAccountWebService>(
        () => _i19.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.OrderDetailsWebService>(
        () => _i20.OrderDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.GetNotificationsWebService>(
        () => _i21.GetNotificationsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.SendOrderWebService>(
        () => _i22.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.GetProductsMainSectionWebService>(
        () => _i23.GetProductsMainSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.DeleteItemFromCartWebService>(
        () => _i24.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.BaseRepositoryAds>(() => _i26.AdsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          adsWebService: gh<_i14.AdsWebService>(),
        ));
    gh.singleton<_i27.NewsWebService>(
        () => _i27.NewsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i28.BaseWebService>(
        () => _i28.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i29.AddtoCartWebService>(
        () => _i29.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i30.BookWebServiceVisitor>(
        () => _i30.BookWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.BaseRepositoryGetSubSections>(
        () => _i32.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i13.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i33.GameWebServiceVisitor>(
        () => _i33.GameWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i34.GameWebService>(
        () => _i34.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i35.DetailsofOfferWebService>(
        () => _i35.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i36.GetProductsofSubSectionWebService>(() =>
        _i36.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i37.BaseRepositoryGetProductsMainSection>(
        () => _i38.GetProductsMainSectionrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsMainSectionWebService:
                  gh<_i23.GetProductsMainSectionWebService>(),
            ));
    gh.factory<_i39.AdsCubit>(
        () => _i39.AdsCubit(gh<_i25.BaseRepositoryAds>()));
    gh.singleton<_i40.TransferWebService>(
        () => _i40.TransferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i41.SearchResultsWebService>(
        () => _i41.SearchResultsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i42.BaseReposotryCreateAccount>(
        () => _i43.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i19.CreateAccountWebService>(),
            ));
    gh.singleton<_i44.QuantityUpdateWebService>(
        () => _i44.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i45.GetFavoritesWebService>(
        () => _i45.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i46.BaseRepositoryQuantityUpdate>(
        () => _i47.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i44.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i48.StationeryWebService>(
        () => _i48.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i49.LoginWebService>(
        () => _i49.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i50.CartItemsWebService>(
        () => _i50.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i51.BookWebService>(
        () => _i51.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i52.BaseRepositoryGameVisitor>(
        () => _i53.GameRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              gameWebServiceVisitor: gh<_i33.GameWebServiceVisitor>(),
            ));
    gh.singleton<_i54.BaseRepositoryDeleteItemFromCart>(() =>
        _i55.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i24.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i56.AddToFavoritesWebService>(
        () => _i56.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i57.GetOrdersWebService>(
        () => _i57.GetOrdersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i58.BaseRepositorySendOrder>(
        () => _i59.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i22.SendOrderWebService>(),
            ));
    gh.singleton<_i60.GetAllOffersWebService>(
        () => _i60.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i61.GetProductsMainSectionCubit>(() =>
        _i61.GetProductsMainSectionCubit(
            gh<_i37.BaseRepositoryGetProductsMainSection>()));
    gh.singleton<_i62.OnArrivalWebService>(
        () => _i62.OnArrivalWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i63.BaseRepositoryDetailsofOffer>(
        () => _i64.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i35.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i65.GetCitiesWebService>(
        () => _i65.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i66.BaseRepositoryOrderDetails>(
        () => _i67.OrderDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              orderDetailsWebService: gh<_i20.OrderDetailsWebService>(),
            ));
    gh.singleton<_i68.BaseRepositoryGetAllOffers>(
        () => _i69.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i60.GetAllOffersWebService>(),
            ));
    gh.singleton<_i70.BaseReposotryLogin>(() => _i71.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i49.LoginWebService>(),
        ));
    gh.singleton<_i72.BaseRepositoryAddToFavorites>(
        () => _i73.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i56.AddToFavoritesWebService>(),
            ));
    gh.singleton<_i74.BaseRepositoryGetProductsOfSubSection>(
        () => _i75.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i36.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i76.BaseRepositoryGame>(() => _i77.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i34.GameWebService>(),
        ));
    gh.singleton<_i78.BaseRepositoryCartItems>(
        () => _i79.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i50.CartItemsWebService>(),
            ));
    gh.factory<_i80.GetsubsectionsCubit>(() =>
        _i80.GetsubsectionsCubit(gh<_i31.BaseRepositoryGetSubSections>()));
    gh.singleton<_i81.BaseRepositoryGetCities>(
        () => _i82.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i65.GetCitiesWebService>(),
            ));
    gh.singleton<_i83.BaseRepositoryStationery>(() => _i84.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i48.StationeryWebService>(),
        ));
    gh.factory<_i85.GameCubit>(
        () => _i85.GameCubit(gh<_i76.BaseRepositoryGame>()));
    gh.singleton<_i86.BaseRepositorySection>(() => _i87.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i15.SectionWebService>(),
        ));
    gh.singleton<_i88.BaseRepositoryStationeryVisitor>(() =>
        _i89.StationeryRepositoryVisitorImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebServiceVisitor: gh<_i12.StationeryWebServiceVisitor>(),
        ));
    gh.singleton<_i90.BaseRepositoryTransfer>(() => _i91.TransferRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          transferWebService: gh<_i40.TransferWebService>(),
        ));
    gh.factory<_i92.QuantitiyupdateCubit>(() =>
        _i92.QuantitiyupdateCubit(gh<_i46.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i93.BaseRepositoryQuraan>(() => _i94.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i95.SectionCubit>(
        () => _i95.SectionCubit(gh<_i86.BaseRepositorySection>()));
    gh.singleton<_i96.BaseRepositoryQuraanVisitor>(
        () => _i97.QuraanRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quraanWebServiceVisitor: gh<_i16.QuraanWebServiceVisitor>(),
            ));
    gh.singleton<_i98.BaseRepositoryBase>(() => _i99.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i28.BaseWebService>(),
        ));
    gh.factory<_i100.GameVisitorCubit>(
        () => _i100.GameVisitorCubit(gh<_i52.BaseRepositoryGameVisitor>()));
    gh.singleton<_i101.BaseRepositorySearchResults>(
        () => _i102.SearchResultsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              resultsWebService: gh<_i41.SearchResultsWebService>(),
            ));
    gh.singleton<_i103.BaseRepositorySectionVisitor>(
        () => _i104.SectionVisitorRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sectionVisitorWebService: gh<_i18.SectionVisitorWebService>(),
            ));
    gh.singleton<_i105.BaseRepositoryAddtoCart>(
        () => _i106.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i29.AddtoCartWebService>(),
            ));
    gh.factory<_i107.BaseCubit>(
        () => _i107.BaseCubit(gh<_i98.BaseRepositoryBase>()));
    gh.factory<_i108.AddtofavoriteCubit>(() =>
        _i108.AddtofavoriteCubit(gh<_i72.BaseRepositoryAddToFavorites>()));
    gh.factory<_i109.DetailsofofferCubit>(() =>
        _i109.DetailsofofferCubit(gh<_i63.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i110.AddtocartCubit>(
        () => _i110.AddtocartCubit(gh<_i105.BaseRepositoryAddtoCart>()));
    gh.factory<_i111.TransferCubit>(
        () => _i111.TransferCubit(gh<_i90.BaseRepositoryTransfer>()));
    gh.singleton<_i112.BaseRepositoryGetNotifications>(
        () => _i113.GetNotificationsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getNotificationsWebService: gh<_i21.GetNotificationsWebService>(),
            ));
    gh.factory<_i114.CreateaccountCubit>(
        () => _i114.CreateaccountCubit(gh<_i42.BaseReposotryCreateAccount>()));
    gh.singleton<_i115.BaseRepositoryBookVisitor>(
        () => _i116.BookRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              bookWebServiceVisitor: gh<_i30.BookWebServiceVisitor>(),
            ));
    gh.singleton<_i117.BaseRepositoryBaseVisitor>(
        () => _i118.BaseRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              baseWebServiceVisitor: gh<_i17.BaseWebServiceVisitor>(),
            ));
    gh.factory<_i119.BaseVisitorCubit>(
        () => _i119.BaseVisitorCubit(gh<_i117.BaseRepositoryBaseVisitor>()));
    gh.singleton<_i120.BaseRepositoryGetFavorites>(
        () => _i121.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i45.GetFavoritesWebService>(),
            ));
    gh.singleton<_i122.BaseRepositoryNews>(() => _i123.NewsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          newsWebService: gh<_i27.NewsWebService>(),
        ));
    gh.singleton<_i124.BaseRepositoryGetOrders>(
        () => _i125.GetOrdersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getOrdersWebService: gh<_i57.GetOrdersWebService>(),
            ));
    gh.factory<_i126.LoginCubit>(() => _i126.LoginCubit(
          gh<_i70.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i127.BookVisitorCubit>(
        () => _i127.BookVisitorCubit(gh<_i115.BaseRepositoryBookVisitor>()));
    gh.factory<_i128.OrderDetailsCubit>(
        () => _i128.OrderDetailsCubit(gh<_i66.BaseRepositoryOrderDetails>()));
    gh.factory<_i129.SendOrderCubit>(
        () => _i129.SendOrderCubit(gh<_i58.BaseRepositorySendOrder>()));
    gh.factory<_i130.GetproductsofsubsectionCubit>(() =>
        _i130.GetproductsofsubsectionCubit(
            gh<_i74.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i131.BaseRepositoryBook>(() => _i132.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i51.BookWebService>(),
        ));
    gh.factory<_i133.QuraanVisitorCubit>(
        () => _i133.QuraanVisitorCubit(gh<_i96.BaseRepositoryQuraanVisitor>()));
    gh.factory<_i134.GetalloffersCubit>(
        () => _i134.GetalloffersCubit(gh<_i68.BaseRepositoryGetAllOffers>()));
    gh.factory<_i135.CartitemsCubit>(
        () => _i135.CartitemsCubit(gh<_i78.BaseRepositoryCartItems>()));
    gh.singleton<_i136.BaseRepositoryOnArrival>(
        () => _i137.OnArrivalRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              onArrivalWebService: gh<_i62.OnArrivalWebService>(),
            ));
    gh.factory<_i138.StationeryCubit>(
        () => _i138.StationeryCubit(gh<_i83.BaseRepositoryStationery>()));
    gh.factory<_i139.DeleteitemfromcartCubit>(() =>
        _i139.DeleteitemfromcartCubit(
            gh<_i54.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i140.GetOrdersCubit>(
        () => _i140.GetOrdersCubit(gh<_i124.BaseRepositoryGetOrders>()));
    gh.factory<_i141.OnArrivalCubit>(
        () => _i141.OnArrivalCubit(gh<_i136.BaseRepositoryOnArrival>()));
    gh.factory<_i142.SearchResultsCubit>(() =>
        _i142.SearchResultsCubit(gh<_i101.BaseRepositorySearchResults>()));
    gh.factory<_i143.NewsCubit>(
        () => _i143.NewsCubit(gh<_i122.BaseRepositoryNews>()));
    gh.factory<_i144.GetCitiesCubit>(
        () => _i144.GetCitiesCubit(gh<_i81.BaseRepositoryGetCities>()));
    gh.factory<_i145.GetNotificationsCubit>(() => _i145.GetNotificationsCubit(
        gh<_i112.BaseRepositoryGetNotifications>()));
    gh.factory<_i146.SectionVisitorCubit>(() =>
        _i146.SectionVisitorCubit(gh<_i103.BaseRepositorySectionVisitor>()));
    gh.factory<_i147.QuraanCubit>(
        () => _i147.QuraanCubit(gh<_i93.BaseRepositoryQuraan>()));
    gh.factory<_i148.GetfavoritesCubit>(
        () => _i148.GetfavoritesCubit(gh<_i120.BaseRepositoryGetFavorites>()));
    gh.factory<_i149.StationeryVisitorCubit>(() => _i149.StationeryVisitorCubit(
        gh<_i88.BaseRepositoryStationeryVisitor>()));
    gh.factory<_i150.BookCubit>(
        () => _i150.BookCubit(gh<_i131.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i151.ThirdPartyInjection {}
