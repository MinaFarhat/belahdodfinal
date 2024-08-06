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
import 'Core/third_party_injection.dart' as _i203;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i152;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i50;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i51;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i22;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i167;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i93;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i94;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i65;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i144;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i143;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i106;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i107;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i71;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i72;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i61;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i62;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i33;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i66;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i28;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i52;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i148;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i184;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i189;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i125;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i137;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i136;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i172;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i173;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/baserepositorydislike.dart'
    as _i117;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/dislikerepository.dart'
    as _i118;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i104;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i105;
import 'Features/User/Details/data/Repostry/Like%20Repository/baserepositorylike.dart'
    as _i55;
import 'Features/User/Details/data/Repostry/Like%20Repository/likerepository.dart'
    as _i56;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i128;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i129;
import 'Features/User/Details/data/Repostry/Rating%20Repository/baserepositoryrating.dart'
    as _i178;
import 'Features/User/Details/data/Repostry/Rating%20Repository/ratingrepository.dart'
    as _i179;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i111;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i112;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i32;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i67;
import 'Features/User/Details/data/Web%20Service/dislikewebservice.dart'
    as _i15;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i39;
import 'Features/User/Details/data/Web%20Service/likewebservice.dart' as _i46;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/ratingwebservice.dart' as _i49;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i64;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i145;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i202;
import 'Features/User/Details/Manager/DisLike%20Cubit/dis_like_cubit.dart'
    as _i131;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i114;
import 'Features/User/Details/Manager/Like%20Cubit/like_cubit.dart' as _i166;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart'
    as _i197;
import 'Features/User/Details/Manager/Rating%20Cubit/rating_cubit.dart'
    as _i187;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i188;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i160;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i161;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i98;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i97;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i59;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i73;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i146;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i198;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i130;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i115;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i116;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i16;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart'
    as _i42;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/getproductsmainsectionrepository.dart'
    as _i43;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart'
    as _i27;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart'
    as _i78;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i36;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i37;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i108;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i100;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i101;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i41;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i171;
import 'Features/User/news/data/Repostry/Ads/adsrepository.dart' as _i30;
import 'Features/User/news/data/Repostry/Ads/baserepositoryads.dart' as _i29;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i80;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i81;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i91;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i92;
import 'Features/User/news/data/Repostry/News/baserepositorymewdetails.dart'
    as _i95;
import 'Features/User/news/data/Repostry/News/baserepositorynews.dart' as _i162;
import 'Features/User/news/data/Repostry/News/newdetailsrepository.dart'
    as _i96;
import 'Features/User/news/data/Repostry/News/newsrepository.dart' as _i163;
import 'Features/User/news/data/Web%20Service/Ads/adswebservice.dart' as _i14;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i40;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i77;
import 'Features/User/news/data/Web%20Service/News/newdetailswebservice.dart'
    as _i34;
import 'Features/User/news/data/Web%20Service/News/newswebservice.dart' as _i31;
import 'Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart' as _i44;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i147;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i183;
import 'Features/User/news/Manager/New%20Details%20Cubit/new_details_cubit.dart'
    as _i99;
import 'Features/User/news/Manager/News%20Cubit/news_cubit.dart' as _i193;
import 'Features/User/note/cubit/get_notifications_cubit.dart' as _i195;
import 'Features/User/note/data/Repostry/baserepositorygetnotifications.dart'
    as _i150;
import 'Features/User/note/data/Repostry/getnotificationsentity.dart' as _i151;
import 'Features/User/note/data/Web%20Service/getnotificationswebservice.dart'
    as _i24;
import 'Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart'
    as _i164;
import 'Features/User/Orders/main%20orders/data/Repostry/getordersrepository.dart'
    as _i165;
import 'Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart'
    as _i74;
import 'Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart'
    as _i190;
import 'Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart'
    as _i87;
import 'Features/User/Orders/Order%20Details/data/Repostry/orderdetailsrepository.dart'
    as _i88;
import 'Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart'
    as _i23;
import 'Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart'
    as _i169;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i75;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i76;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i25;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i170;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart'
    as _i185;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/onarrivalrepository.dart'
    as _i186;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart'
    as _i123;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/transferrepository.dart'
    as _i124;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart'
    as _i79;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart'
    as _i47;
import 'Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart'
    as _i191;
import 'Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart'
    as _i149;
import 'Features/User/profile/data/Repostry/Delete%20Account%20Repository/baserepositorydeleteaccount.dart'
    as _i89;
import 'Features/User/profile/data/Repostry/Delete%20Account%20Repository/deleteaccountrepository.dart'
    as _i90;
import 'Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/baserepositoryupdateprofilephoto.dart'
    as _i126;
import 'Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/updateprofilephotorepository.dart'
    as _i127;
import 'Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/baserepositoryupdateuserinfo.dart'
    as _i83;
import 'Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/updateuserinforepository.dart'
    as _i84;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo.dart'
    as _i175;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo2.dart'
    as _i157;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/getuserinfo2repository.dart'
    as _i158;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/getusrinforepository.dart'
    as _i176;
import 'Features/User/profile/data/Web%20Service/Delete%20Account%20WebService/deleteaccountwebservice.dart'
    as _i45;
import 'Features/User/profile/data/Web%20Service/Update%20Photo%20Profile%20WebService/updateprofilephotowebservice.dart'
    as _i17;
import 'Features/User/profile/data/Web%20Service/Update%20User%20Info%20WebService/updateuserinfowebserivce.dart'
    as _i70;
import 'Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfo2webservice.dart'
    as _i63;
import 'Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfowebservice.dart'
    as _i85;
import 'Features/User/profile/Manager/Delete%20Account%20Cubit/delete_account_cubit.dart'
    as _i132;
import 'Features/User/profile/Manager/Get%20User%20Info%202%20Cubit/get_user_info2_cubit.dart'
    as _i177;
import 'Features/User/profile/Manager/Get%20User%20Info%20Cubit/get_user_info_cubit.dart'
    as _i201;
import 'Features/User/profile/Manager/Update%20Profile%20Photo%20Cubit/update_profile_photo_cubit.dart'
    as _i174;
import 'Features/User/profile/Manager/Update%20User%20Info%20Cubit/update_user_info_cubit.dart'
    as _i113;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchbyqr.dart'
    as _i102;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart'
    as _i139;
import 'Features/User/search/Normal%20Search/data/Repository/searchbyqrrepository.dart'
    as _i103;
import 'Features/User/search/Normal%20Search/data/Repository/searchresultsrepository.dart'
    as _i140;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchbyqrwebservice.dart'
    as _i86;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchresultswebservice.dart'
    as _i48;
import 'Features/User/search/Normal%20Search/Search%20By%20QR%20Cubit/search_by_qr_cubit.dart'
    as _i133;
import 'Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart'
    as _i192;
import 'Features/User/search/Populer%20Products/data/Repository/baserepositorypopularproducts.dart'
    as _i57;
import 'Features/User/search/Populer%20Products/data/Repository/popularproductsrepository.dart'
    as _i58;
import 'Features/User/search/Populer%20Products/data/webService/popularproductswebservice.dart'
    as _i26;
import 'Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart'
    as _i120;
import 'Features/User/Vouchers/data/Repository/Create%20Voucher%20Repository/baserepositorycreatevoucher.dart'
    as _i180;
import 'Features/User/Vouchers/data/Repository/Create%20Voucher%20Repository/createvoucherrepository.dart'
    as _i181;
import 'Features/User/Vouchers/data/Repository/Get%20Vouchers%20Repository/baserepositorygetvouchers.dart'
    as _i53;
import 'Features/User/Vouchers/data/Repository/Get%20Vouchers%20Repository/getvouchersrepository.dart'
    as _i54;
import 'Features/User/Vouchers/data/WebService/Create%20Voucher%20WebService/createvoucherwebservice.dart'
    as _i60;
import 'Features/User/Vouchers/data/WebService/Get%20Vouchers%20WebService/getvoucherswebservice.dart'
    as _i19;
import 'Features/User/Vouchers/Manager/Create%20Voucher%20Cubit/create_voucher_cubit.dart'
    as _i200;
import 'Features/User/Vouchers/Manager/Get%20Vouchers%20Cubit/get_vouchers_cubit.dart'
    as _i119;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart'
    as _i155;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositoryvisitor.dart'
    as _i156;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart'
    as _i153;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/bookrepositoryvisitor.dart'
    as _i154;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/baserepositorygamevisitor.dart'
    as _i68;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/gamerepositoryvisitor.dart'
    as _i69;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart'
    as _i134;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/quraanrepositoryvisitor.dart'
    as _i135;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart'
    as _i121;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/stationeryrepositoryvisitor.dart'
    as _i122;
import 'Features/Visitor/Details/data/Web%20Service/base_webservicevisitor.dart'
    as _i20;
import 'Features/Visitor/Details/data/Web%20Service/book_webservicevisitor.dart'
    as _i35;
import 'Features/Visitor/Details/data/Web%20Service/game_webservicevisitor.dart'
    as _i38;
import 'Features/Visitor/Details/data/Web%20Service/quraan_webservicevisitor.dart'
    as _i18;
import 'Features/Visitor/Details/data/Web%20Service/stationery_webservicevisitor.dart'
    as _i12;
import 'Features/Visitor/Details/Manager/Base%20Visitor%20Cubit/base_visitor_cubit.dart'
    as _i159;
import 'Features/Visitor/Details/Manager/Book%20Visitor%20Cubit/book_visitor_cubit.dart'
    as _i168;
import 'Features/Visitor/Details/Manager/Game%20Visitor%20Cubit/game_visitor_cubit.dart'
    as _i138;
import 'Features/Visitor/Details/Manager/Quraan%20Visitor%20Cubit/quraan_visitor_cubit.dart'
    as _i182;
import 'Features/Visitor/Details/Manager/Stationery%20Visitor%20Cbit/stationery_visitor_cubit.dart'
    as _i199;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/cubit/section_visitor_cubit.dart'
    as _i196;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart'
    as _i141;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/sectionvisitorrepository.dart'
    as _i142;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Web%20Service/sectionvisitorwebservice.dart'
    as _i21;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i109;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i110;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i82;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i194;

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
    gh.singleton<_i19.GetVouchersWebService>(
        () => _i19.GetVouchersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.BaseWebServiceVisitor>(
        () => _i20.BaseWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.SectionVisitorWebService>(
        () => _i21.SectionVisitorWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.CreateAccountWebService>(
        () => _i22.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.OrderDetailsWebService>(
        () => _i23.OrderDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.GetNotificationsWebService>(
        () => _i24.GetNotificationsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.SendOrderWebService>(
        () => _i25.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.PopularProductsWebService>(
        () => _i26.PopularProductsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i27.GetProductsMainSectionWebService>(
        () => _i27.GetProductsMainSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i28.DeleteItemFromCartWebService>(
        () => _i28.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i29.BaseRepositoryAds>(() => _i30.AdsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          adsWebService: gh<_i14.AdsWebService>(),
        ));
    gh.singleton<_i31.NewsWebService>(
        () => _i31.NewsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i32.BaseWebService>(
        () => _i32.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i33.AddtoCartWebService>(
        () => _i33.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i34.NewDetailsWebService>(
        () => _i34.NewDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i35.BookWebServiceVisitor>(
        () => _i35.BookWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i36.BaseRepositoryGetSubSections>(
        () => _i37.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i13.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i38.GameWebServiceVisitor>(
        () => _i38.GameWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i39.GameWebService>(
        () => _i39.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i40.DetailsofOfferWebService>(
        () => _i40.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i41.GetProductsofSubSectionWebService>(() =>
        _i41.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i42.BaseRepositoryGetProductsMainSection>(
        () => _i43.GetProductsMainSectionrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsMainSectionWebService:
                  gh<_i27.GetProductsMainSectionWebService>(),
            ));
    gh.factory<_i44.AdsCubit>(
        () => _i44.AdsCubit(gh<_i29.BaseRepositoryAds>()));
    gh.singleton<_i45.DeleteAccountWebService>(
        () => _i45.DeleteAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i46.LikeWebService>(
        () => _i46.LikeWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i47.TransferWebService>(
        () => _i47.TransferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i48.SearchResultsWebService>(
        () => _i48.SearchResultsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i49.RatingWebService>(
        () => _i49.RatingWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i50.BaseReposotryCreateAccount>(
        () => _i51.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i22.CreateAccountWebService>(),
            ));
    gh.singleton<_i52.QuantityUpdateWebService>(
        () => _i52.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i53.BaseRepositoryGetVouchers>(
        () => _i54.GetVouchersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getVouchersWebService: gh<_i19.GetVouchersWebService>(),
            ));
    gh.singleton<_i55.BaseRepositoryLike>(() => _i56.LikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          likeWebService: gh<_i46.LikeWebService>(),
        ));
    gh.singleton<_i57.BaseRepositoryPopularProducts>(
        () => _i58.PopularProductsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              popularProductsWebService: gh<_i26.PopularProductsWebService>(),
            ));
    gh.singleton<_i59.GetFavoritesWebService>(
        () => _i59.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i60.CreateVoucherWebService>(
        () => _i60.CreateVoucherWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i61.BaseRepositoryQuantityUpdate>(
        () => _i62.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i52.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i63.GetUserInfo2WebService>(
        () => _i63.GetUserInfo2WebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i64.StationeryWebService>(
        () => _i64.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i65.LoginWebService>(
        () => _i65.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i66.CartItemsWebService>(
        () => _i66.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i67.BookWebService>(
        () => _i67.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i68.BaseRepositoryGameVisitor>(
        () => _i69.GameRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              gameWebServiceVisitor: gh<_i38.GameWebServiceVisitor>(),
            ));
    gh.singleton<_i70.UpdateUserInfoWebService>(
        () => _i70.UpdateUserInfoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i71.BaseRepositoryDeleteItemFromCart>(() =>
        _i72.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i28.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i73.AddToFavoritesWebService>(
        () => _i73.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i74.GetOrdersWebService>(
        () => _i74.GetOrdersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i75.BaseRepositorySendOrder>(
        () => _i76.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i25.SendOrderWebService>(),
            ));
    gh.singleton<_i77.GetAllOffersWebService>(
        () => _i77.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i78.GetProductsMainSectionCubit>(() =>
        _i78.GetProductsMainSectionCubit(
            gh<_i42.BaseRepositoryGetProductsMainSection>()));
    gh.singleton<_i79.OnArrivalWebService>(
        () => _i79.OnArrivalWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i80.BaseRepositoryDetailsofOffer>(
        () => _i81.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i40.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i82.GetCitiesWebService>(
        () => _i82.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i83.BaseRepositoryUpdateUserInfo>(
        () => _i84.UpdateUserInfoRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              updateUserInfoWebService: gh<_i70.UpdateUserInfoWebService>(),
            ));
    gh.singleton<_i85.GetUserInfoWebService>(
        () => _i85.GetUserInfoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i86.SearchByQrWebService>(
        () => _i86.SearchByQrWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i87.BaseRepositoryOrderDetails>(
        () => _i88.OrderDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              orderDetailsWebService: gh<_i23.OrderDetailsWebService>(),
            ));
    gh.singleton<_i89.BaseRepositoryDeleteAccount>(
        () => _i90.DeleteAccountRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              deleteAccountWebService: gh<_i45.DeleteAccountWebService>(),
            ));
    gh.singleton<_i91.BaseRepositoryGetAllOffers>(
        () => _i92.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i77.GetAllOffersWebService>(),
            ));
    gh.singleton<_i93.BaseReposotryLogin>(() => _i94.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i65.LoginWebService>(),
        ));
    gh.singleton<_i95.BaseRepositoryNewDetails>(
        () => _i96.NewDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              newDetailsWebService: gh<_i34.NewDetailsWebService>(),
            ));
    gh.singleton<_i97.BaseRepositoryAddToFavorites>(
        () => _i98.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i73.AddToFavoritesWebService>(),
            ));
    gh.factory<_i99.NewDetailsCubit>(
        () => _i99.NewDetailsCubit(gh<_i95.BaseRepositoryNewDetails>()));
    gh.singleton<_i100.BaseRepositoryGetProductsOfSubSection>(
        () => _i101.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i41.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i102.BaseRepositorySearchByQr>(
        () => _i103.SearchByQrRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              searchByQrWebService: gh<_i86.SearchByQrWebService>(),
            ));
    gh.singleton<_i104.BaseRepositoryGame>(() => _i105.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i39.GameWebService>(),
        ));
    gh.singleton<_i106.BaseRepositoryCartItems>(
        () => _i107.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i66.CartItemsWebService>(),
            ));
    gh.factory<_i108.GetsubsectionsCubit>(() =>
        _i108.GetsubsectionsCubit(gh<_i36.BaseRepositoryGetSubSections>()));
    gh.singleton<_i109.BaseRepositoryGetCities>(
        () => _i110.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i82.GetCitiesWebService>(),
            ));
    gh.singleton<_i111.BaseRepositoryStationery>(
        () => _i112.StationeryRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              stationeryWebService: gh<_i64.StationeryWebService>(),
            ));
    gh.factory<_i113.UpdateUserInfoCubit>(() =>
        _i113.UpdateUserInfoCubit(gh<_i83.BaseRepositoryUpdateUserInfo>()));
    gh.factory<_i114.GameCubit>(
        () => _i114.GameCubit(gh<_i104.BaseRepositoryGame>()));
    gh.singleton<_i115.BaseRepositorySection>(() => _i116.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i16.SectionWebService>(),
        ));
    gh.singleton<_i117.BaseRepositoryDisLike>(() => _i118.DisLikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          disLikeWebService: gh<_i15.DisLikeWebService>(),
        ));
    gh.factory<_i119.GetVouchersCubit>(
        () => _i119.GetVouchersCubit(gh<_i53.BaseRepositoryGetVouchers>()));
    gh.factory<_i120.PopularProductsCubit>(() =>
        _i120.PopularProductsCubit(gh<_i57.BaseRepositoryPopularProducts>()));
    gh.singleton<_i121.BaseRepositoryStationeryVisitor>(() =>
        _i122.StationeryRepositoryVisitorImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebServiceVisitor: gh<_i12.StationeryWebServiceVisitor>(),
        ));
    gh.singleton<_i123.BaseRepositoryTransfer>(
        () => _i124.TransferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              transferWebService: gh<_i47.TransferWebService>(),
            ));
    gh.factory<_i125.QuantitiyupdateCubit>(() =>
        _i125.QuantitiyupdateCubit(gh<_i61.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i126.BaseRepositoryUpdateProfilePhoto>(() =>
        _i127.UpdateProfilePhotoRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          updateProfilePhotoWebService: gh<_i17.UpdateProfilePhotoWebService>(),
        ));
    gh.singleton<_i128.BaseRepositoryQuraan>(() => _i129.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i130.SectionCubit>(
        () => _i130.SectionCubit(gh<_i115.BaseRepositorySection>()));
    gh.factory<_i131.DisLikeCubit>(
        () => _i131.DisLikeCubit(gh<_i117.BaseRepositoryDisLike>()));
    gh.factory<_i132.DeleteAccountCubit>(
        () => _i132.DeleteAccountCubit(gh<_i89.BaseRepositoryDeleteAccount>()));
    gh.factory<_i133.SearchByQrCubit>(
        () => _i133.SearchByQrCubit(gh<_i102.BaseRepositorySearchByQr>()));
    gh.singleton<_i134.BaseRepositoryQuraanVisitor>(
        () => _i135.QuraanRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quraanWebServiceVisitor: gh<_i18.QuraanWebServiceVisitor>(),
            ));
    gh.singleton<_i136.BaseRepositoryBase>(() => _i137.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i32.BaseWebService>(),
        ));
    gh.factory<_i138.GameVisitorCubit>(
        () => _i138.GameVisitorCubit(gh<_i68.BaseRepositoryGameVisitor>()));
    gh.singleton<_i139.BaseRepositorySearchResults>(
        () => _i140.SearchResultsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              resultsWebService: gh<_i48.SearchResultsWebService>(),
            ));
    gh.singleton<_i141.BaseRepositorySectionVisitor>(
        () => _i142.SectionVisitorRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sectionVisitorWebService: gh<_i21.SectionVisitorWebService>(),
            ));
    gh.singleton<_i143.BaseRepositoryAddtoCart>(
        () => _i144.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i33.AddtoCartWebService>(),
            ));
    gh.factory<_i145.BaseCubit>(
        () => _i145.BaseCubit(gh<_i136.BaseRepositoryBase>()));
    gh.factory<_i146.AddtofavoriteCubit>(() =>
        _i146.AddtofavoriteCubit(gh<_i97.BaseRepositoryAddToFavorites>()));
    gh.factory<_i147.DetailsofofferCubit>(() =>
        _i147.DetailsofofferCubit(gh<_i80.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i148.AddtocartCubit>(
        () => _i148.AddtocartCubit(gh<_i143.BaseRepositoryAddtoCart>()));
    gh.factory<_i149.TransferCubit>(
        () => _i149.TransferCubit(gh<_i123.BaseRepositoryTransfer>()));
    gh.singleton<_i150.BaseRepositoryGetNotifications>(
        () => _i151.GetNotificationsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getNotificationsWebService: gh<_i24.GetNotificationsWebService>(),
            ));
    gh.factory<_i152.CreateaccountCubit>(
        () => _i152.CreateaccountCubit(gh<_i50.BaseReposotryCreateAccount>()));
    gh.singleton<_i153.BaseRepositoryBookVisitor>(
        () => _i154.BookRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              bookWebServiceVisitor: gh<_i35.BookWebServiceVisitor>(),
            ));
    gh.singleton<_i155.BaseRepositoryBaseVisitor>(
        () => _i156.BaseRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              baseWebServiceVisitor: gh<_i20.BaseWebServiceVisitor>(),
            ));
    gh.singleton<_i157.BaseRepositoryGetUserInfo2>(
        () => _i158.GetUserInfo2RepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserInfo2WebService: gh<_i63.GetUserInfo2WebService>(),
            ));
    gh.factory<_i159.BaseVisitorCubit>(
        () => _i159.BaseVisitorCubit(gh<_i155.BaseRepositoryBaseVisitor>()));
    gh.singleton<_i160.BaseRepositoryGetFavorites>(
        () => _i161.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i59.GetFavoritesWebService>(),
            ));
    gh.singleton<_i162.BaseRepositoryNews>(() => _i163.NewsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          newsWebService: gh<_i31.NewsWebService>(),
        ));
    gh.singleton<_i164.BaseRepositoryGetOrders>(
        () => _i165.GetOrdersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getOrdersWebService: gh<_i74.GetOrdersWebService>(),
            ));
    gh.factory<_i166.LikeCubit>(
        () => _i166.LikeCubit(gh<_i55.BaseRepositoryLike>()));
    gh.factory<_i167.LoginCubit>(() => _i167.LoginCubit(
          gh<_i93.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i168.BookVisitorCubit>(
        () => _i168.BookVisitorCubit(gh<_i153.BaseRepositoryBookVisitor>()));
    gh.factory<_i169.OrderDetailsCubit>(
        () => _i169.OrderDetailsCubit(gh<_i87.BaseRepositoryOrderDetails>()));
    gh.factory<_i170.SendOrderCubit>(
        () => _i170.SendOrderCubit(gh<_i75.BaseRepositorySendOrder>()));
    gh.factory<_i171.GetproductsofsubsectionCubit>(() =>
        _i171.GetproductsofsubsectionCubit(
            gh<_i100.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i172.BaseRepositoryBook>(() => _i173.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i67.BookWebService>(),
        ));
    gh.factory<_i174.UpdateProfilePhotoCubit>(() =>
        _i174.UpdateProfilePhotoCubit(
            gh<_i126.BaseRepositoryUpdateProfilePhoto>()));
    gh.singleton<_i175.BaseRepositoryGetUserInfo>(
        () => _i176.GetUserInfoRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserInfoWebService: gh<_i85.GetUserInfoWebService>(),
            ));
    gh.factory<_i177.GetUserInfo2Cubit>(
        () => _i177.GetUserInfo2Cubit(gh<_i157.BaseRepositoryGetUserInfo2>()));
    gh.singleton<_i178.BaseRepositoryRating>(() => _i179.RatingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          ratingWebService: gh<_i49.RatingWebService>(),
        ));
    gh.singleton<_i180.BaseRepositoryCreateVoucher>(
        () => _i181.CreateVoucherRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              createVoucherWebService: gh<_i60.CreateVoucherWebService>(),
            ));
    gh.factory<_i182.QuraanVisitorCubit>(() =>
        _i182.QuraanVisitorCubit(gh<_i134.BaseRepositoryQuraanVisitor>()));
    gh.factory<_i183.GetalloffersCubit>(
        () => _i183.GetalloffersCubit(gh<_i91.BaseRepositoryGetAllOffers>()));
    gh.factory<_i184.CartitemsCubit>(
        () => _i184.CartitemsCubit(gh<_i106.BaseRepositoryCartItems>()));
    gh.singleton<_i185.BaseRepositoryOnArrival>(
        () => _i186.OnArrivalRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              onArrivalWebService: gh<_i79.OnArrivalWebService>(),
            ));
    gh.factory<_i187.RatingCubit>(
        () => _i187.RatingCubit(gh<_i178.BaseRepositoryRating>()));
    gh.factory<_i188.StationeryCubit>(
        () => _i188.StationeryCubit(gh<_i111.BaseRepositoryStationery>()));
    gh.factory<_i189.DeleteitemfromcartCubit>(() =>
        _i189.DeleteitemfromcartCubit(
            gh<_i71.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i190.GetOrdersCubit>(
        () => _i190.GetOrdersCubit(gh<_i164.BaseRepositoryGetOrders>()));
    gh.factory<_i191.OnArrivalCubit>(
        () => _i191.OnArrivalCubit(gh<_i185.BaseRepositoryOnArrival>()));
    gh.factory<_i192.SearchResultsCubit>(() =>
        _i192.SearchResultsCubit(gh<_i139.BaseRepositorySearchResults>()));
    gh.factory<_i193.NewsCubit>(
        () => _i193.NewsCubit(gh<_i162.BaseRepositoryNews>()));
    gh.factory<_i194.GetCitiesCubit>(
        () => _i194.GetCitiesCubit(gh<_i109.BaseRepositoryGetCities>()));
    gh.factory<_i195.GetNotificationsCubit>(() => _i195.GetNotificationsCubit(
        gh<_i150.BaseRepositoryGetNotifications>()));
    gh.factory<_i196.SectionVisitorCubit>(() =>
        _i196.SectionVisitorCubit(gh<_i141.BaseRepositorySectionVisitor>()));
    gh.factory<_i197.QuraanCubit>(
        () => _i197.QuraanCubit(gh<_i128.BaseRepositoryQuraan>()));
    gh.factory<_i198.GetfavoritesCubit>(
        () => _i198.GetfavoritesCubit(gh<_i160.BaseRepositoryGetFavorites>()));
    gh.factory<_i199.StationeryVisitorCubit>(() => _i199.StationeryVisitorCubit(
        gh<_i121.BaseRepositoryStationeryVisitor>()));
    gh.factory<_i200.CreateVoucherCubit>(() =>
        _i200.CreateVoucherCubit(gh<_i180.BaseRepositoryCreateVoucher>()));
    gh.factory<_i201.GetUserInfoCubit>(
        () => _i201.GetUserInfoCubit(gh<_i175.BaseRepositoryGetUserInfo>()));
    gh.factory<_i202.BookCubit>(
        () => _i202.BookCubit(gh<_i172.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i203.ThirdPartyInjection {}
