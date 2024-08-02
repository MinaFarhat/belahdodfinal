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
import 'Core/third_party_injection.dart' as _i195;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i147;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i49;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i50;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i21;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i162;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i89;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i90;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i61;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i139;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i138;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i102;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i103;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i67;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i68;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i57;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i58;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i32;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i62;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i27;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i51;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i143;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i177;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i182;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i120;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i132;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i131;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i167;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i168;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/baserepositorydislike.dart'
    as _i113;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/dislikerepository.dart'
    as _i114;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i100;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i101;
import 'Features/User/Details/data/Repostry/Like%20Repository/baserepositorylike.dart'
    as _i52;
import 'Features/User/Details/data/Repostry/Like%20Repository/likerepository.dart'
    as _i53;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i123;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i124;
import 'Features/User/Details/data/Repostry/Rating%20Repository/baserepositoryrating.dart'
    as _i173;
import 'Features/User/Details/data/Repostry/Rating%20Repository/ratingrepository.dart'
    as _i174;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i107;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i108;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i31;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i63;
import 'Features/User/Details/data/Web%20Service/dislikewebservice.dart'
    as _i15;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i38;
import 'Features/User/Details/data/Web%20Service/likewebservice.dart' as _i45;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/ratingwebservice.dart' as _i48;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i60;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i140;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i194;
import 'Features/User/Details/Manager/DisLike%20Cubit/dis_like_cubit.dart'
    as _i126;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i110;
import 'Features/User/Details/Manager/Like%20Cubit/like_cubit.dart' as _i161;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart'
    as _i190;
import 'Features/User/Details/Manager/Rating%20Cubit/rating_cubit.dart'
    as _i180;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i181;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i155;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i156;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i94;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i93;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i56;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i69;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i141;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i191;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i125;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i111;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i112;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i16;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart'
    as _i41;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/getproductsmainsectionrepository.dart'
    as _i42;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart'
    as _i26;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart'
    as _i74;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i35;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i36;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i104;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i96;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i97;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i40;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i166;
import 'Features/User/news/data/Repostry/Ads/adsrepository.dart' as _i29;
import 'Features/User/news/data/Repostry/Ads/baserepositoryads.dart' as _i28;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i76;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i77;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i87;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i88;
import 'Features/User/news/data/Repostry/News/baserepositorymewdetails.dart'
    as _i91;
import 'Features/User/news/data/Repostry/News/baserepositorynews.dart' as _i157;
import 'Features/User/news/data/Repostry/News/newdetailsrepository.dart'
    as _i92;
import 'Features/User/news/data/Repostry/News/newsrepository.dart' as _i158;
import 'Features/User/news/data/Web%20Service/Ads/adswebservice.dart' as _i14;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i39;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i73;
import 'Features/User/news/data/Web%20Service/News/newdetailswebservice.dart'
    as _i33;
import 'Features/User/news/data/Web%20Service/News/newswebservice.dart' as _i30;
import 'Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart' as _i43;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i142;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i176;
import 'Features/User/news/Manager/New%20Details%20Cubit/new_details_cubit.dart'
    as _i95;
import 'Features/User/news/Manager/News%20Cubit/news_cubit.dart' as _i186;
import 'Features/User/note/cubit/get_notifications_cubit.dart' as _i188;
import 'Features/User/note/data/Repostry/baserepositorygetnotifications.dart'
    as _i145;
import 'Features/User/note/data/Repostry/getnotificationsentity.dart' as _i146;
import 'Features/User/note/data/Web%20Service/getnotificationswebservice.dart'
    as _i23;
import 'Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart'
    as _i159;
import 'Features/User/Orders/main%20orders/data/Repostry/getordersrepository.dart'
    as _i160;
import 'Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart'
    as _i70;
import 'Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart'
    as _i183;
import 'Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart'
    as _i83;
import 'Features/User/Orders/Order%20Details/data/Repostry/orderdetailsrepository.dart'
    as _i84;
import 'Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart'
    as _i22;
import 'Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart'
    as _i164;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i71;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i72;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i24;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i165;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart'
    as _i178;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/onarrivalrepository.dart'
    as _i179;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart'
    as _i118;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/transferrepository.dart'
    as _i119;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart'
    as _i75;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart'
    as _i46;
import 'Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart'
    as _i184;
import 'Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart'
    as _i144;
import 'Features/User/profile/data/Repostry/Delete%20Account%20Repository/baserepositorydeleteaccount.dart'
    as _i85;
import 'Features/User/profile/data/Repostry/Delete%20Account%20Repository/deleteaccountrepository.dart'
    as _i86;
import 'Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/baserepositoryupdateprofilephoto.dart'
    as _i121;
import 'Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/updateprofilephotorepository.dart'
    as _i122;
import 'Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/baserepositoryupdateuserinfo.dart'
    as _i79;
import 'Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/updateuserinforepository.dart'
    as _i80;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo.dart'
    as _i170;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo2.dart'
    as _i152;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/getuserinfo2repository.dart'
    as _i153;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/getusrinforepository.dart'
    as _i171;
import 'Features/User/profile/data/Web%20Service/Delete%20Account%20WebService/deleteaccountwebservice.dart'
    as _i44;
import 'Features/User/profile/data/Web%20Service/Update%20Photo%20Profile%20WebService/updateprofilephotowebservice.dart'
    as _i17;
import 'Features/User/profile/data/Web%20Service/Update%20User%20Info%20WebService/updateuserinfowebserivce.dart'
    as _i66;
import 'Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfo2webservice.dart'
    as _i59;
import 'Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfowebservice.dart'
    as _i81;
import 'Features/User/profile/Manager/Delete%20Account%20Cubit/delete_account_cubit.dart'
    as _i127;
import 'Features/User/profile/Manager/Get%20User%20Info%202%20Cubit/get_user_info2_cubit.dart'
    as _i172;
import 'Features/User/profile/Manager/Get%20User%20Info%20Cubit/get_user_info_cubit.dart'
    as _i193;
import 'Features/User/profile/Manager/Update%20Profile%20Photo%20Cubit/update_profile_photo_cubit.dart'
    as _i169;
import 'Features/User/profile/Manager/Update%20User%20Info%20Cubit/update_user_info_cubit.dart'
    as _i109;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchbyqr.dart'
    as _i98;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart'
    as _i134;
import 'Features/User/search/Normal%20Search/data/Repository/searchbyqrrepository.dart'
    as _i99;
import 'Features/User/search/Normal%20Search/data/Repository/searchresultsrepository.dart'
    as _i135;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchbyqrwebservice.dart'
    as _i82;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchresultswebservice.dart'
    as _i47;
import 'Features/User/search/Normal%20Search/Search%20By%20QR%20Cubit/search_by_qr_cubit.dart'
    as _i128;
import 'Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart'
    as _i185;
import 'Features/User/search/Populer%20Products/data/Repository/baserepositorypopularproducts.dart'
    as _i54;
import 'Features/User/search/Populer%20Products/data/Repository/popularproductsrepository.dart'
    as _i55;
import 'Features/User/search/Populer%20Products/data/webService/popularproductswebservice.dart'
    as _i25;
import 'Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart'
    as _i115;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart'
    as _i150;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositoryvisitor.dart'
    as _i151;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart'
    as _i148;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/bookrepositoryvisitor.dart'
    as _i149;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/baserepositorygamevisitor.dart'
    as _i64;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/gamerepositoryvisitor.dart'
    as _i65;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart'
    as _i129;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/quraanrepositoryvisitor.dart'
    as _i130;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart'
    as _i116;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/stationeryrepositoryvisitor.dart'
    as _i117;
import 'Features/Visitor/Details/data/Web%20Service/base_webservicevisitor.dart'
    as _i19;
import 'Features/Visitor/Details/data/Web%20Service/book_webservicevisitor.dart'
    as _i34;
import 'Features/Visitor/Details/data/Web%20Service/game_webservicevisitor.dart'
    as _i37;
import 'Features/Visitor/Details/data/Web%20Service/quraan_webservicevisitor.dart'
    as _i18;
import 'Features/Visitor/Details/data/Web%20Service/stationery_webservicevisitor.dart'
    as _i12;
import 'Features/Visitor/Details/Manager/Base%20Visitor%20Cubit/base_visitor_cubit.dart'
    as _i154;
import 'Features/Visitor/Details/Manager/Book%20Visitor%20Cubit/book_visitor_cubit.dart'
    as _i163;
import 'Features/Visitor/Details/Manager/Game%20Visitor%20Cubit/game_visitor_cubit.dart'
    as _i133;
import 'Features/Visitor/Details/Manager/Quraan%20Visitor%20Cubit/quraan_visitor_cubit.dart'
    as _i175;
import 'Features/Visitor/Details/Manager/Stationery%20Visitor%20Cbit/stationery_visitor_cubit.dart'
    as _i192;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/cubit/section_visitor_cubit.dart'
    as _i189;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart'
    as _i136;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/sectionvisitorrepository.dart'
    as _i137;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Web%20Service/sectionvisitorwebservice.dart'
    as _i20;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i105;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i106;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i78;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i187;

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
    gh.singleton<_i17.UpdateProfilePhotoWebService>(
        () => _i17.UpdateProfilePhotoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.QuraanWebServiceVisitor>(
        () => _i18.QuraanWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.BaseWebServiceVisitor>(
        () => _i19.BaseWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.SectionVisitorWebService>(
        () => _i20.SectionVisitorWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.CreateAccountWebService>(
        () => _i21.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.OrderDetailsWebService>(
        () => _i22.OrderDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.GetNotificationsWebService>(
        () => _i23.GetNotificationsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.SendOrderWebService>(
        () => _i24.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.PopularProductsWebService>(
        () => _i25.PopularProductsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.GetProductsMainSectionWebService>(
        () => _i26.GetProductsMainSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i27.DeleteItemFromCartWebService>(
        () => _i27.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i28.BaseRepositoryAds>(() => _i29.AdsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          adsWebService: gh<_i14.AdsWebService>(),
        ));
    gh.singleton<_i30.NewsWebService>(
        () => _i30.NewsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.BaseWebService>(
        () => _i31.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i32.AddtoCartWebService>(
        () => _i32.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i33.NewDetailsWebService>(
        () => _i33.NewDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i34.BookWebServiceVisitor>(
        () => _i34.BookWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i35.BaseRepositoryGetSubSections>(
        () => _i36.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i13.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i37.GameWebServiceVisitor>(
        () => _i37.GameWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i38.GameWebService>(
        () => _i38.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i39.DetailsofOfferWebService>(
        () => _i39.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i40.GetProductsofSubSectionWebService>(() =>
        _i40.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i41.BaseRepositoryGetProductsMainSection>(
        () => _i42.GetProductsMainSectionrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsMainSectionWebService:
                  gh<_i26.GetProductsMainSectionWebService>(),
            ));
    gh.factory<_i43.AdsCubit>(
        () => _i43.AdsCubit(gh<_i28.BaseRepositoryAds>()));
    gh.singleton<_i44.DeleteAccountWebService>(
        () => _i44.DeleteAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i45.LikeWebService>(
        () => _i45.LikeWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i46.TransferWebService>(
        () => _i46.TransferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i47.SearchResultsWebService>(
        () => _i47.SearchResultsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i48.RatingWebService>(
        () => _i48.RatingWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i49.BaseReposotryCreateAccount>(
        () => _i50.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i21.CreateAccountWebService>(),
            ));
    gh.singleton<_i51.QuantityUpdateWebService>(
        () => _i51.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i52.BaseRepositoryLike>(() => _i53.LikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          likeWebService: gh<_i45.LikeWebService>(),
        ));
    gh.singleton<_i54.BaseRepositoryPopularProducts>(
        () => _i55.PopularProductsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              popularProductsWebService: gh<_i25.PopularProductsWebService>(),
            ));
    gh.singleton<_i56.GetFavoritesWebService>(
        () => _i56.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i57.BaseRepositoryQuantityUpdate>(
        () => _i58.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i51.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i59.GetUserInfo2WebService>(
        () => _i59.GetUserInfo2WebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i60.StationeryWebService>(
        () => _i60.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i61.LoginWebService>(
        () => _i61.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i62.CartItemsWebService>(
        () => _i62.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i63.BookWebService>(
        () => _i63.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i64.BaseRepositoryGameVisitor>(
        () => _i65.GameRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              gameWebServiceVisitor: gh<_i37.GameWebServiceVisitor>(),
            ));
    gh.singleton<_i66.UpdateUserInfoWebService>(
        () => _i66.UpdateUserInfoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i67.BaseRepositoryDeleteItemFromCart>(() =>
        _i68.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i27.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i69.AddToFavoritesWebService>(
        () => _i69.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i70.GetOrdersWebService>(
        () => _i70.GetOrdersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i71.BaseRepositorySendOrder>(
        () => _i72.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i24.SendOrderWebService>(),
            ));
    gh.singleton<_i73.GetAllOffersWebService>(
        () => _i73.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i74.GetProductsMainSectionCubit>(() =>
        _i74.GetProductsMainSectionCubit(
            gh<_i41.BaseRepositoryGetProductsMainSection>()));
    gh.singleton<_i75.OnArrivalWebService>(
        () => _i75.OnArrivalWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i76.BaseRepositoryDetailsofOffer>(
        () => _i77.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i39.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i78.GetCitiesWebService>(
        () => _i78.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i79.BaseRepositoryUpdateUserInfo>(
        () => _i80.UpdateUserInfoRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              updateUserInfoWebService: gh<_i66.UpdateUserInfoWebService>(),
            ));
    gh.singleton<_i81.GetUserInfoWebService>(
        () => _i81.GetUserInfoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i82.SearchByQrWebService>(
        () => _i82.SearchByQrWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i83.BaseRepositoryOrderDetails>(
        () => _i84.OrderDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              orderDetailsWebService: gh<_i22.OrderDetailsWebService>(),
            ));
    gh.singleton<_i85.BaseRepositoryDeleteAccount>(
        () => _i86.DeleteAccountRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              deleteAccountWebService: gh<_i44.DeleteAccountWebService>(),
            ));
    gh.singleton<_i87.BaseRepositoryGetAllOffers>(
        () => _i88.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i73.GetAllOffersWebService>(),
            ));
    gh.singleton<_i89.BaseReposotryLogin>(() => _i90.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i61.LoginWebService>(),
        ));
    gh.singleton<_i91.BaseRepositoryNewDetails>(
        () => _i92.NewDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              newDetailsWebService: gh<_i33.NewDetailsWebService>(),
            ));
    gh.singleton<_i93.BaseRepositoryAddToFavorites>(
        () => _i94.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i69.AddToFavoritesWebService>(),
            ));
    gh.factory<_i95.NewDetailsCubit>(
        () => _i95.NewDetailsCubit(gh<_i91.BaseRepositoryNewDetails>()));
    gh.singleton<_i96.BaseRepositoryGetProductsOfSubSection>(
        () => _i97.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i40.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i98.BaseRepositorySearchByQr>(
        () => _i99.SearchByQrRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              searchByQrWebService: gh<_i82.SearchByQrWebService>(),
            ));
    gh.singleton<_i100.BaseRepositoryGame>(() => _i101.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i38.GameWebService>(),
        ));
    gh.singleton<_i102.BaseRepositoryCartItems>(
        () => _i103.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i62.CartItemsWebService>(),
            ));
    gh.factory<_i104.GetsubsectionsCubit>(() =>
        _i104.GetsubsectionsCubit(gh<_i35.BaseRepositoryGetSubSections>()));
    gh.singleton<_i105.BaseRepositoryGetCities>(
        () => _i106.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i78.GetCitiesWebService>(),
            ));
    gh.singleton<_i107.BaseRepositoryStationery>(
        () => _i108.StationeryRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              stationeryWebService: gh<_i60.StationeryWebService>(),
            ));
    gh.factory<_i109.UpdateUserInfoCubit>(() =>
        _i109.UpdateUserInfoCubit(gh<_i79.BaseRepositoryUpdateUserInfo>()));
    gh.factory<_i110.GameCubit>(
        () => _i110.GameCubit(gh<_i100.BaseRepositoryGame>()));
    gh.singleton<_i111.BaseRepositorySection>(() => _i112.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i16.SectionWebService>(),
        ));
    gh.singleton<_i113.BaseRepositoryDisLike>(() => _i114.DisLikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          disLikeWebService: gh<_i15.DisLikeWebService>(),
        ));
    gh.factory<_i115.PopularProductsCubit>(() =>
        _i115.PopularProductsCubit(gh<_i54.BaseRepositoryPopularProducts>()));
    gh.singleton<_i116.BaseRepositoryStationeryVisitor>(() =>
        _i117.StationeryRepositoryVisitorImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebServiceVisitor: gh<_i12.StationeryWebServiceVisitor>(),
        ));
    gh.singleton<_i118.BaseRepositoryTransfer>(
        () => _i119.TransferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              transferWebService: gh<_i46.TransferWebService>(),
            ));
    gh.factory<_i120.QuantitiyupdateCubit>(() =>
        _i120.QuantitiyupdateCubit(gh<_i57.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i121.BaseRepositoryUpdateProfilePhoto>(() =>
        _i122.UpdateProfilePhotoRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          updateProfilePhotoWebService: gh<_i17.UpdateProfilePhotoWebService>(),
        ));
    gh.singleton<_i123.BaseRepositoryQuraan>(() => _i124.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i125.SectionCubit>(
        () => _i125.SectionCubit(gh<_i111.BaseRepositorySection>()));
    gh.factory<_i126.DisLikeCubit>(
        () => _i126.DisLikeCubit(gh<_i113.BaseRepositoryDisLike>()));
    gh.factory<_i127.DeleteAccountCubit>(
        () => _i127.DeleteAccountCubit(gh<_i85.BaseRepositoryDeleteAccount>()));
    gh.factory<_i128.SearchByQrCubit>(
        () => _i128.SearchByQrCubit(gh<_i98.BaseRepositorySearchByQr>()));
    gh.singleton<_i129.BaseRepositoryQuraanVisitor>(
        () => _i130.QuraanRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quraanWebServiceVisitor: gh<_i18.QuraanWebServiceVisitor>(),
            ));
    gh.singleton<_i131.BaseRepositoryBase>(() => _i132.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i31.BaseWebService>(),
        ));
    gh.factory<_i133.GameVisitorCubit>(
        () => _i133.GameVisitorCubit(gh<_i64.BaseRepositoryGameVisitor>()));
    gh.singleton<_i134.BaseRepositorySearchResults>(
        () => _i135.SearchResultsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              resultsWebService: gh<_i47.SearchResultsWebService>(),
            ));
    gh.singleton<_i136.BaseRepositorySectionVisitor>(
        () => _i137.SectionVisitorRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sectionVisitorWebService: gh<_i20.SectionVisitorWebService>(),
            ));
    gh.singleton<_i138.BaseRepositoryAddtoCart>(
        () => _i139.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i32.AddtoCartWebService>(),
            ));
    gh.factory<_i140.BaseCubit>(
        () => _i140.BaseCubit(gh<_i131.BaseRepositoryBase>()));
    gh.factory<_i141.AddtofavoriteCubit>(() =>
        _i141.AddtofavoriteCubit(gh<_i93.BaseRepositoryAddToFavorites>()));
    gh.factory<_i142.DetailsofofferCubit>(() =>
        _i142.DetailsofofferCubit(gh<_i76.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i143.AddtocartCubit>(
        () => _i143.AddtocartCubit(gh<_i138.BaseRepositoryAddtoCart>()));
    gh.factory<_i144.TransferCubit>(
        () => _i144.TransferCubit(gh<_i118.BaseRepositoryTransfer>()));
    gh.singleton<_i145.BaseRepositoryGetNotifications>(
        () => _i146.GetNotificationsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getNotificationsWebService: gh<_i23.GetNotificationsWebService>(),
            ));
    gh.factory<_i147.CreateaccountCubit>(
        () => _i147.CreateaccountCubit(gh<_i49.BaseReposotryCreateAccount>()));
    gh.singleton<_i148.BaseRepositoryBookVisitor>(
        () => _i149.BookRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              bookWebServiceVisitor: gh<_i34.BookWebServiceVisitor>(),
            ));
    gh.singleton<_i150.BaseRepositoryBaseVisitor>(
        () => _i151.BaseRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              baseWebServiceVisitor: gh<_i19.BaseWebServiceVisitor>(),
            ));
    gh.singleton<_i152.BaseRepositoryGetUserInfo2>(
        () => _i153.GetUserInfo2RepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserInfo2WebService: gh<_i59.GetUserInfo2WebService>(),
            ));
    gh.factory<_i154.BaseVisitorCubit>(
        () => _i154.BaseVisitorCubit(gh<_i150.BaseRepositoryBaseVisitor>()));
    gh.singleton<_i155.BaseRepositoryGetFavorites>(
        () => _i156.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i56.GetFavoritesWebService>(),
            ));
    gh.singleton<_i157.BaseRepositoryNews>(() => _i158.NewsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          newsWebService: gh<_i30.NewsWebService>(),
        ));
    gh.singleton<_i159.BaseRepositoryGetOrders>(
        () => _i160.GetOrdersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getOrdersWebService: gh<_i70.GetOrdersWebService>(),
            ));
    gh.factory<_i161.LikeCubit>(
        () => _i161.LikeCubit(gh<_i52.BaseRepositoryLike>()));
    gh.factory<_i162.LoginCubit>(() => _i162.LoginCubit(
          gh<_i89.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i163.BookVisitorCubit>(
        () => _i163.BookVisitorCubit(gh<_i148.BaseRepositoryBookVisitor>()));
    gh.factory<_i164.OrderDetailsCubit>(
        () => _i164.OrderDetailsCubit(gh<_i83.BaseRepositoryOrderDetails>()));
    gh.factory<_i165.SendOrderCubit>(
        () => _i165.SendOrderCubit(gh<_i71.BaseRepositorySendOrder>()));
    gh.factory<_i166.GetproductsofsubsectionCubit>(() =>
        _i166.GetproductsofsubsectionCubit(
            gh<_i96.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i167.BaseRepositoryBook>(() => _i168.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i63.BookWebService>(),
        ));
    gh.factory<_i169.UpdateProfilePhotoCubit>(() =>
        _i169.UpdateProfilePhotoCubit(
            gh<_i121.BaseRepositoryUpdateProfilePhoto>()));
    gh.singleton<_i170.BaseRepositoryGetUserInfo>(
        () => _i171.GetUserInfoRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserInfoWebService: gh<_i81.GetUserInfoWebService>(),
            ));
    gh.factory<_i172.GetUserInfo2Cubit>(
        () => _i172.GetUserInfo2Cubit(gh<_i152.BaseRepositoryGetUserInfo2>()));
    gh.singleton<_i173.BaseRepositoryRating>(() => _i174.RatingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          ratingWebService: gh<_i48.RatingWebService>(),
        ));
    gh.factory<_i175.QuraanVisitorCubit>(() =>
        _i175.QuraanVisitorCubit(gh<_i129.BaseRepositoryQuraanVisitor>()));
    gh.factory<_i176.GetalloffersCubit>(
        () => _i176.GetalloffersCubit(gh<_i87.BaseRepositoryGetAllOffers>()));
    gh.factory<_i177.CartitemsCubit>(
        () => _i177.CartitemsCubit(gh<_i102.BaseRepositoryCartItems>()));
    gh.singleton<_i178.BaseRepositoryOnArrival>(
        () => _i179.OnArrivalRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              onArrivalWebService: gh<_i75.OnArrivalWebService>(),
            ));
    gh.factory<_i180.RatingCubit>(
        () => _i180.RatingCubit(gh<_i173.BaseRepositoryRating>()));
    gh.factory<_i181.StationeryCubit>(
        () => _i181.StationeryCubit(gh<_i107.BaseRepositoryStationery>()));
    gh.factory<_i182.DeleteitemfromcartCubit>(() =>
        _i182.DeleteitemfromcartCubit(
            gh<_i67.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i183.GetOrdersCubit>(
        () => _i183.GetOrdersCubit(gh<_i159.BaseRepositoryGetOrders>()));
    gh.factory<_i184.OnArrivalCubit>(
        () => _i184.OnArrivalCubit(gh<_i178.BaseRepositoryOnArrival>()));
    gh.factory<_i185.SearchResultsCubit>(() =>
        _i185.SearchResultsCubit(gh<_i134.BaseRepositorySearchResults>()));
    gh.factory<_i186.NewsCubit>(
        () => _i186.NewsCubit(gh<_i157.BaseRepositoryNews>()));
    gh.factory<_i187.GetCitiesCubit>(
        () => _i187.GetCitiesCubit(gh<_i105.BaseRepositoryGetCities>()));
    gh.factory<_i188.GetNotificationsCubit>(() => _i188.GetNotificationsCubit(
        gh<_i145.BaseRepositoryGetNotifications>()));
    gh.factory<_i189.SectionVisitorCubit>(() =>
        _i189.SectionVisitorCubit(gh<_i136.BaseRepositorySectionVisitor>()));
    gh.factory<_i190.QuraanCubit>(
        () => _i190.QuraanCubit(gh<_i123.BaseRepositoryQuraan>()));
    gh.factory<_i191.GetfavoritesCubit>(
        () => _i191.GetfavoritesCubit(gh<_i155.BaseRepositoryGetFavorites>()));
    gh.factory<_i192.StationeryVisitorCubit>(() => _i192.StationeryVisitorCubit(
        gh<_i116.BaseRepositoryStationeryVisitor>()));
    gh.factory<_i193.GetUserInfoCubit>(
        () => _i193.GetUserInfoCubit(gh<_i170.BaseRepositoryGetUserInfo>()));
    gh.factory<_i194.BookCubit>(
        () => _i194.BookCubit(gh<_i167.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i195.ThirdPartyInjection {}
