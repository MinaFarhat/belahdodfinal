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
import 'Core/third_party_injection.dart' as _i167;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i126;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i46;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i47;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i20;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i139;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i76;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i77;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i55;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i118;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i117;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i87;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i88;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i60;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i61;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i52;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i53;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i30;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i56;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i25;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i48;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i122;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i150;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i155;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i103;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i111;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i110;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i144;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i145;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/baserepositorydislike.dart'
    as _i97;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/dislikerepository.dart'
    as _i98;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i85;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i86;
import 'Features/User/Details/data/Repostry/Like%20Repository/baserepositorylike.dart'
    as _i49;
import 'Features/User/Details/data/Repostry/Like%20Repository/likerepository.dart'
    as _i50;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i104;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i105;
import 'Features/User/Details/data/Repostry/Rating%20Repository/baserepositoryrating.dart'
    as _i146;
import 'Features/User/Details/data/Repostry/Rating%20Repository/ratingrepository.dart'
    as _i147;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i92;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i93;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i29;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i57;
import 'Features/User/Details/data/Web%20Service/dislikewebservice.dart'
    as _i15;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i36;
import 'Features/User/Details/data/Web%20Service/likewebservice.dart' as _i42;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/ratingwebservice.dart' as _i45;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i54;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i119;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i166;
import 'Features/User/Details/Manager/DisLike%20Cubit/dis_like_cubit.dart'
    as _i107;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i94;
import 'Features/User/Details/Manager/Like%20Cubit/like_cubit.dart' as _i138;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart'
    as _i163;
import 'Features/User/Details/Manager/Rating%20Cubit/rating_cubit.dart'
    as _i153;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i154;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i132;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i133;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i81;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i80;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i51;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i62;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i120;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i164;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i106;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i95;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i96;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i16;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart'
    as _i39;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/getproductsmainsectionrepository.dart'
    as _i40;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart'
    as _i24;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart'
    as _i67;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i33;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i34;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i89;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i83;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i84;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i38;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i143;
import 'Features/User/news/data/Repostry/Ads/adsrepository.dart' as _i27;
import 'Features/User/news/data/Repostry/Ads/baserepositoryads.dart' as _i26;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i69;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i70;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i74;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i75;
import 'Features/User/news/data/Repostry/News/baserepositorymewdetails.dart'
    as _i78;
import 'Features/User/news/data/Repostry/News/baserepositorynews.dart' as _i134;
import 'Features/User/news/data/Repostry/News/newdetailsrepository.dart'
    as _i79;
import 'Features/User/news/data/Repostry/News/newsrepository.dart' as _i135;
import 'Features/User/news/data/Web%20Service/Ads/adswebservice.dart' as _i14;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i37;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i66;
import 'Features/User/news/data/Web%20Service/News/newdetailswebservice.dart'
    as _i31;
import 'Features/User/news/data/Web%20Service/News/newswebservice.dart' as _i28;
import 'Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart' as _i41;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i121;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i149;
import 'Features/User/news/Manager/New%20Details%20Cubit/new_details_cubit.dart'
    as _i82;
import 'Features/User/news/Manager/News%20Cubit/news_cubit.dart' as _i159;
import 'Features/User/note/cubit/get_notifications_cubit.dart' as _i161;
import 'Features/User/note/data/Repostry/baserepositorygetnotifications.dart'
    as _i124;
import 'Features/User/note/data/Repostry/getnotificationsentity.dart' as _i125;
import 'Features/User/note/data/Web%20Service/getnotificationswebservice.dart'
    as _i22;
import 'Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart'
    as _i136;
import 'Features/User/Orders/main%20orders/data/Repostry/getordersrepository.dart'
    as _i137;
import 'Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart'
    as _i63;
import 'Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart'
    as _i156;
import 'Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart'
    as _i72;
import 'Features/User/Orders/Order%20Details/data/Repostry/orderdetailsrepository.dart'
    as _i73;
import 'Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart'
    as _i21;
import 'Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart'
    as _i141;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i64;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i65;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i23;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i142;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart'
    as _i151;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/onarrivalrepository.dart'
    as _i152;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart'
    as _i101;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/transferrepository.dart'
    as _i102;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart'
    as _i68;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart'
    as _i43;
import 'Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart'
    as _i157;
import 'Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart'
    as _i123;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart'
    as _i113;
import 'Features/User/search/Normal%20Search/data/Repository/searchresultsrepository.dart'
    as _i114;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchresultswebservice.dart'
    as _i44;
import 'Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart'
    as _i158;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart'
    as _i129;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositoryvisitor.dart'
    as _i130;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart'
    as _i127;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/bookrepositoryvisitor.dart'
    as _i128;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/baserepositorygamevisitor.dart'
    as _i58;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/gamerepositoryvisitor.dart'
    as _i59;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart'
    as _i108;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/quraanrepositoryvisitor.dart'
    as _i109;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart'
    as _i99;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/stationeryrepositoryvisitor.dart'
    as _i100;
import 'Features/Visitor/Details/data/Web%20Service/base_webservicevisitor.dart'
    as _i18;
import 'Features/Visitor/Details/data/Web%20Service/book_webservicevisitor.dart'
    as _i32;
import 'Features/Visitor/Details/data/Web%20Service/game_webservicevisitor.dart'
    as _i35;
import 'Features/Visitor/Details/data/Web%20Service/quraan_webservicevisitor.dart'
    as _i17;
import 'Features/Visitor/Details/data/Web%20Service/stationery_webservicevisitor.dart'
    as _i12;
import 'Features/Visitor/Details/Manager/Base%20Visitor%20Cubit/base_visitor_cubit.dart'
    as _i131;
import 'Features/Visitor/Details/Manager/Book%20Visitor%20Cubit/book_visitor_cubit.dart'
    as _i140;
import 'Features/Visitor/Details/Manager/Game%20Visitor%20Cubit/game_visitor_cubit.dart'
    as _i112;
import 'Features/Visitor/Details/Manager/Quraan%20Visitor%20Cubit/quraan_visitor_cubit.dart'
    as _i148;
import 'Features/Visitor/Details/Manager/Stationery%20Visitor%20Cbit/stationery_visitor_cubit.dart'
    as _i165;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/cubit/section_visitor_cubit.dart'
    as _i162;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart'
    as _i115;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/sectionvisitorrepository.dart'
    as _i116;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Web%20Service/sectionvisitorwebservice.dart'
    as _i19;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i90;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i91;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i71;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i160;

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
    gh.singleton<_i15.DisLikeWebService>(
        () => _i15.DisLikeWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.SectionWebService>(
        () => _i16.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.QuraanWebServiceVisitor>(
        () => _i17.QuraanWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.BaseWebServiceVisitor>(
        () => _i18.BaseWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.SectionVisitorWebService>(
        () => _i19.SectionVisitorWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.CreateAccountWebService>(
        () => _i20.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.OrderDetailsWebService>(
        () => _i21.OrderDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.GetNotificationsWebService>(
        () => _i22.GetNotificationsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.SendOrderWebService>(
        () => _i23.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.GetProductsMainSectionWebService>(
        () => _i24.GetProductsMainSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.DeleteItemFromCartWebService>(
        () => _i25.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.BaseRepositoryAds>(() => _i27.AdsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          adsWebService: gh<_i14.AdsWebService>(),
        ));
    gh.singleton<_i28.NewsWebService>(
        () => _i28.NewsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i29.BaseWebService>(
        () => _i29.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i30.AddtoCartWebService>(
        () => _i30.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.NewDetailsWebService>(
        () => _i31.NewDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i32.BookWebServiceVisitor>(
        () => _i32.BookWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i33.BaseRepositoryGetSubSections>(
        () => _i34.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i13.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i35.GameWebServiceVisitor>(
        () => _i35.GameWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i36.GameWebService>(
        () => _i36.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i37.DetailsofOfferWebService>(
        () => _i37.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i38.GetProductsofSubSectionWebService>(() =>
        _i38.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i39.BaseRepositoryGetProductsMainSection>(
        () => _i40.GetProductsMainSectionrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsMainSectionWebService:
                  gh<_i24.GetProductsMainSectionWebService>(),
            ));
    gh.factory<_i41.AdsCubit>(
        () => _i41.AdsCubit(gh<_i26.BaseRepositoryAds>()));
    gh.singleton<_i42.LikeWebService>(
        () => _i42.LikeWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i43.TransferWebService>(
        () => _i43.TransferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i44.SearchResultsWebService>(
        () => _i44.SearchResultsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i45.RatingWebService>(
        () => _i45.RatingWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i46.BaseReposotryCreateAccount>(
        () => _i47.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i20.CreateAccountWebService>(),
            ));
    gh.singleton<_i48.QuantityUpdateWebService>(
        () => _i48.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i49.BaseRepositoryLike>(() => _i50.LikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          likeWebService: gh<_i42.LikeWebService>(),
        ));
    gh.singleton<_i51.GetFavoritesWebService>(
        () => _i51.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i52.BaseRepositoryQuantityUpdate>(
        () => _i53.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i48.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i54.StationeryWebService>(
        () => _i54.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i55.LoginWebService>(
        () => _i55.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i56.CartItemsWebService>(
        () => _i56.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i57.BookWebService>(
        () => _i57.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i58.BaseRepositoryGameVisitor>(
        () => _i59.GameRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              gameWebServiceVisitor: gh<_i35.GameWebServiceVisitor>(),
            ));
    gh.singleton<_i60.BaseRepositoryDeleteItemFromCart>(() =>
        _i61.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i25.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i62.AddToFavoritesWebService>(
        () => _i62.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i63.GetOrdersWebService>(
        () => _i63.GetOrdersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i64.BaseRepositorySendOrder>(
        () => _i65.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i23.SendOrderWebService>(),
            ));
    gh.singleton<_i66.GetAllOffersWebService>(
        () => _i66.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i67.GetProductsMainSectionCubit>(() =>
        _i67.GetProductsMainSectionCubit(
            gh<_i39.BaseRepositoryGetProductsMainSection>()));
    gh.singleton<_i68.OnArrivalWebService>(
        () => _i68.OnArrivalWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i69.BaseRepositoryDetailsofOffer>(
        () => _i70.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i37.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i71.GetCitiesWebService>(
        () => _i71.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i72.BaseRepositoryOrderDetails>(
        () => _i73.OrderDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              orderDetailsWebService: gh<_i21.OrderDetailsWebService>(),
            ));
    gh.singleton<_i74.BaseRepositoryGetAllOffers>(
        () => _i75.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i66.GetAllOffersWebService>(),
            ));
    gh.singleton<_i76.BaseReposotryLogin>(() => _i77.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i55.LoginWebService>(),
        ));
    gh.singleton<_i78.BaseRepositoryNewDetails>(
        () => _i79.NewDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              newDetailsWebService: gh<_i31.NewDetailsWebService>(),
            ));
    gh.singleton<_i80.BaseRepositoryAddToFavorites>(
        () => _i81.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i62.AddToFavoritesWebService>(),
            ));
    gh.factory<_i82.NewDetailsCubit>(
        () => _i82.NewDetailsCubit(gh<_i78.BaseRepositoryNewDetails>()));
    gh.singleton<_i83.BaseRepositoryGetProductsOfSubSection>(
        () => _i84.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i38.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i85.BaseRepositoryGame>(() => _i86.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i36.GameWebService>(),
        ));
    gh.singleton<_i87.BaseRepositoryCartItems>(
        () => _i88.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i56.CartItemsWebService>(),
            ));
    gh.factory<_i89.GetsubsectionsCubit>(() =>
        _i89.GetsubsectionsCubit(gh<_i33.BaseRepositoryGetSubSections>()));
    gh.singleton<_i90.BaseRepositoryGetCities>(
        () => _i91.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i71.GetCitiesWebService>(),
            ));
    gh.singleton<_i92.BaseRepositoryStationery>(() => _i93.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i54.StationeryWebService>(),
        ));
    gh.factory<_i94.GameCubit>(
        () => _i94.GameCubit(gh<_i85.BaseRepositoryGame>()));
    gh.singleton<_i95.BaseRepositorySection>(() => _i96.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i16.SectionWebService>(),
        ));
    gh.singleton<_i97.BaseRepositoryDisLike>(() => _i98.DisLikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          disLikeWebService: gh<_i15.DisLikeWebService>(),
        ));
    gh.singleton<_i99.BaseRepositoryStationeryVisitor>(() =>
        _i100.StationeryRepositoryVisitorImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebServiceVisitor: gh<_i12.StationeryWebServiceVisitor>(),
        ));
    gh.singleton<_i101.BaseRepositoryTransfer>(
        () => _i102.TransferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              transferWebService: gh<_i43.TransferWebService>(),
            ));
    gh.factory<_i103.QuantitiyupdateCubit>(() =>
        _i103.QuantitiyupdateCubit(gh<_i52.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i104.BaseRepositoryQuraan>(() => _i105.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i106.SectionCubit>(
        () => _i106.SectionCubit(gh<_i95.BaseRepositorySection>()));
    gh.factory<_i107.DisLikeCubit>(
        () => _i107.DisLikeCubit(gh<_i97.BaseRepositoryDisLike>()));
    gh.singleton<_i108.BaseRepositoryQuraanVisitor>(
        () => _i109.QuraanRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quraanWebServiceVisitor: gh<_i17.QuraanWebServiceVisitor>(),
            ));
    gh.singleton<_i110.BaseRepositoryBase>(() => _i111.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i29.BaseWebService>(),
        ));
    gh.factory<_i112.GameVisitorCubit>(
        () => _i112.GameVisitorCubit(gh<_i58.BaseRepositoryGameVisitor>()));
    gh.singleton<_i113.BaseRepositorySearchResults>(
        () => _i114.SearchResultsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              resultsWebService: gh<_i44.SearchResultsWebService>(),
            ));
    gh.singleton<_i115.BaseRepositorySectionVisitor>(
        () => _i116.SectionVisitorRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sectionVisitorWebService: gh<_i19.SectionVisitorWebService>(),
            ));
    gh.singleton<_i117.BaseRepositoryAddtoCart>(
        () => _i118.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i30.AddtoCartWebService>(),
            ));
    gh.factory<_i119.BaseCubit>(
        () => _i119.BaseCubit(gh<_i110.BaseRepositoryBase>()));
    gh.factory<_i120.AddtofavoriteCubit>(() =>
        _i120.AddtofavoriteCubit(gh<_i80.BaseRepositoryAddToFavorites>()));
    gh.factory<_i121.DetailsofofferCubit>(() =>
        _i121.DetailsofofferCubit(gh<_i69.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i122.AddtocartCubit>(
        () => _i122.AddtocartCubit(gh<_i117.BaseRepositoryAddtoCart>()));
    gh.factory<_i123.TransferCubit>(
        () => _i123.TransferCubit(gh<_i101.BaseRepositoryTransfer>()));
    gh.singleton<_i124.BaseRepositoryGetNotifications>(
        () => _i125.GetNotificationsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getNotificationsWebService: gh<_i22.GetNotificationsWebService>(),
            ));
    gh.factory<_i126.CreateaccountCubit>(
        () => _i126.CreateaccountCubit(gh<_i46.BaseReposotryCreateAccount>()));
    gh.singleton<_i127.BaseRepositoryBookVisitor>(
        () => _i128.BookRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              bookWebServiceVisitor: gh<_i32.BookWebServiceVisitor>(),
            ));
    gh.singleton<_i129.BaseRepositoryBaseVisitor>(
        () => _i130.BaseRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              baseWebServiceVisitor: gh<_i18.BaseWebServiceVisitor>(),
            ));
    gh.factory<_i131.BaseVisitorCubit>(
        () => _i131.BaseVisitorCubit(gh<_i129.BaseRepositoryBaseVisitor>()));
    gh.singleton<_i132.BaseRepositoryGetFavorites>(
        () => _i133.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i51.GetFavoritesWebService>(),
            ));
    gh.singleton<_i134.BaseRepositoryNews>(() => _i135.NewsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          newsWebService: gh<_i28.NewsWebService>(),
        ));
    gh.singleton<_i136.BaseRepositoryGetOrders>(
        () => _i137.GetOrdersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getOrdersWebService: gh<_i63.GetOrdersWebService>(),
            ));
    gh.factory<_i138.LikeCubit>(
        () => _i138.LikeCubit(gh<_i49.BaseRepositoryLike>()));
    gh.factory<_i139.LoginCubit>(() => _i139.LoginCubit(
          gh<_i76.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i140.BookVisitorCubit>(
        () => _i140.BookVisitorCubit(gh<_i127.BaseRepositoryBookVisitor>()));
    gh.factory<_i141.OrderDetailsCubit>(
        () => _i141.OrderDetailsCubit(gh<_i72.BaseRepositoryOrderDetails>()));
    gh.factory<_i142.SendOrderCubit>(
        () => _i142.SendOrderCubit(gh<_i64.BaseRepositorySendOrder>()));
    gh.factory<_i143.GetproductsofsubsectionCubit>(() =>
        _i143.GetproductsofsubsectionCubit(
            gh<_i83.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i144.BaseRepositoryBook>(() => _i145.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i57.BookWebService>(),
        ));
    gh.singleton<_i146.BaseRepositoryRating>(() => _i147.RatingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          ratingWebService: gh<_i45.RatingWebService>(),
        ));
    gh.factory<_i148.QuraanVisitorCubit>(() =>
        _i148.QuraanVisitorCubit(gh<_i108.BaseRepositoryQuraanVisitor>()));
    gh.factory<_i149.GetalloffersCubit>(
        () => _i149.GetalloffersCubit(gh<_i74.BaseRepositoryGetAllOffers>()));
    gh.factory<_i150.CartitemsCubit>(
        () => _i150.CartitemsCubit(gh<_i87.BaseRepositoryCartItems>()));
    gh.singleton<_i151.BaseRepositoryOnArrival>(
        () => _i152.OnArrivalRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              onArrivalWebService: gh<_i68.OnArrivalWebService>(),
            ));
    gh.factory<_i153.RatingCubit>(
        () => _i153.RatingCubit(gh<_i146.BaseRepositoryRating>()));
    gh.factory<_i154.StationeryCubit>(
        () => _i154.StationeryCubit(gh<_i92.BaseRepositoryStationery>()));
    gh.factory<_i155.DeleteitemfromcartCubit>(() =>
        _i155.DeleteitemfromcartCubit(
            gh<_i60.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i156.GetOrdersCubit>(
        () => _i156.GetOrdersCubit(gh<_i136.BaseRepositoryGetOrders>()));
    gh.factory<_i157.OnArrivalCubit>(
        () => _i157.OnArrivalCubit(gh<_i151.BaseRepositoryOnArrival>()));
    gh.factory<_i158.SearchResultsCubit>(() =>
        _i158.SearchResultsCubit(gh<_i113.BaseRepositorySearchResults>()));
    gh.factory<_i159.NewsCubit>(
        () => _i159.NewsCubit(gh<_i134.BaseRepositoryNews>()));
    gh.factory<_i160.GetCitiesCubit>(
        () => _i160.GetCitiesCubit(gh<_i90.BaseRepositoryGetCities>()));
    gh.factory<_i161.GetNotificationsCubit>(() => _i161.GetNotificationsCubit(
        gh<_i124.BaseRepositoryGetNotifications>()));
    gh.factory<_i162.SectionVisitorCubit>(() =>
        _i162.SectionVisitorCubit(gh<_i115.BaseRepositorySectionVisitor>()));
    gh.factory<_i163.QuraanCubit>(
        () => _i163.QuraanCubit(gh<_i104.BaseRepositoryQuraan>()));
    gh.factory<_i164.GetfavoritesCubit>(
        () => _i164.GetfavoritesCubit(gh<_i132.BaseRepositoryGetFavorites>()));
    gh.factory<_i165.StationeryVisitorCubit>(() => _i165.StationeryVisitorCubit(
        gh<_i99.BaseRepositoryStationeryVisitor>()));
    gh.factory<_i166.BookCubit>(
        () => _i166.BookCubit(gh<_i144.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i167.ThirdPartyInjection {}
