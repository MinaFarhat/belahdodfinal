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
import 'Core/third_party_injection.dart' as _i231;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i171;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i51;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i52;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i23;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i190;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i107;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i108;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i72;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i162;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i161;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i124;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i125;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i78;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i79;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i68;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i69;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i34;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i73;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i29;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i55;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i166;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i209;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i214;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i143;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i155;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i154;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i195;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i196;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/baserepositorydislike.dart'
    as _i135;
import 'Features/User/Details/data/Repostry/DisLike%20Repository/dislikerepository.dart'
    as _i136;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i122;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i123;
import 'Features/User/Details/data/Repostry/Like%20Repository/baserepositorylike.dart'
    as _i58;
import 'Features/User/Details/data/Repostry/Like%20Repository/likerepository.dart'
    as _i59;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i146;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i147;
import 'Features/User/Details/data/Repostry/Rating%20Repository/baserepositoryrating.dart'
    as _i201;
import 'Features/User/Details/data/Repostry/Rating%20Repository/ratingrepository.dart'
    as _i202;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i129;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i130;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i33;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i74;
import 'Features/User/Details/data/Web%20Service/dislikewebservice.dart'
    as _i16;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i40;
import 'Features/User/Details/data/Web%20Service/likewebservice.dart' as _i47;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/ratingwebservice.dart' as _i50;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i71;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i163;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i230;
import 'Features/User/Details/Manager/DisLike%20Cubit/dis_like_cubit.dart'
    as _i149;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i132;
import 'Features/User/Details/Manager/Like%20Cubit/like_cubit.dart' as _i189;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart'
    as _i223;
import 'Features/User/Details/Manager/Rating%20Cubit/rating_cubit.dart'
    as _i212;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i213;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i182;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i183;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i112;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i111;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i65;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i80;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i164;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i225;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i148;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i133;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i134;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i17;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart'
    as _i43;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/getproductsmainsectionrepository.dart'
    as _i44;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart'
    as _i28;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart'
    as _i86;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i37;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i38;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i126;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i118;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i119;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i42;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i194;
import 'Features/User/news/data/Repostry/Ads/adsrepository.dart' as _i31;
import 'Features/User/news/data/Repostry/Ads/baserepositoryads.dart' as _i30;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i88;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i89;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i103;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i104;
import 'Features/User/news/data/Repostry/News/baserepositorymewdetails.dart'
    as _i109;
import 'Features/User/news/data/Repostry/News/baserepositorynews.dart' as _i184;
import 'Features/User/news/data/Repostry/News/newdetailsrepository.dart'
    as _i110;
import 'Features/User/news/data/Repostry/News/newsrepository.dart' as _i185;
import 'Features/User/news/data/Web%20Service/Ads/adswebservice.dart' as _i15;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i41;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i84;
import 'Features/User/news/data/Web%20Service/News/newdetailswebservice.dart'
    as _i35;
import 'Features/User/news/data/Web%20Service/News/newswebservice.dart' as _i32;
import 'Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart' as _i45;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i165;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i208;
import 'Features/User/news/Manager/New%20Details%20Cubit/new_details_cubit.dart'
    as _i113;
import 'Features/User/news/Manager/News%20Cubit/news_cubit.dart' as _i219;
import 'Features/User/note/data/Repostry/baserepositorychangestatenote.dart'
    as _i180;
import 'Features/User/note/data/Repostry/baserepositorygetnotifications.dart'
    as _i169;
import 'Features/User/note/data/Repostry/changestatenoterepository.dart'
    as _i181;
import 'Features/User/note/data/Repostry/getnotificationsentity.dart' as _i170;
import 'Features/User/note/data/Web%20Service/changestatenotewebservice.dart'
    as _i92;
import 'Features/User/note/data/Web%20Service/getnotificationswebservice.dart'
    as _i25;
import 'Features/User/note/Manager/Change%20State%20Notification%20Cubit/change_state_note_cubit.dart'
    as _i227;
import 'Features/User/note/Manager/Get%20Notification%20Cubit/get_notifications_cubit.dart'
    as _i221;
import 'Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart'
    as _i186;
import 'Features/User/Orders/main%20orders/data/Repostry/getordersrepository.dart'
    as _i187;
import 'Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart'
    as _i81;
import 'Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart'
    as _i215;
import 'Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart'
    as _i99;
import 'Features/User/Orders/Order%20Details/data/Repostry/orderdetailsrepository.dart'
    as _i100;
import 'Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart'
    as _i24;
import 'Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart'
    as _i192;
import 'Features/User/payment/Address/data/Repository/baserepositorysendoffer.dart'
    as _i105;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i82;
import 'Features/User/payment/Address/data/Repository/sendofferreposiotry.dart'
    as _i106;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i83;
import 'Features/User/payment/Address/data/WebService/sendofferwebservice.dart'
    as _i64;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i26;
import 'Features/User/payment/Address/Send%20Offer%20Cubit/send_offer_cubit.dart'
    as _i218;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i193;
import 'Features/User/payment/Payment%20Methods/data/Repository/Check%20Balance/baserepositorycheckbalance.dart'
    as _i93;
import 'Features/User/payment/Payment%20Methods/data/Repository/Check%20Balance/checkbalancerepository.dart'
    as _i94;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart'
    as _i210;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/onarrivalrepository.dart'
    as _i211;
import 'Features/User/payment/Payment%20Methods/data/Repository/Pay%20By%20Voucher/baserepositorypaybyvoucher.dart'
    as _i114;
import 'Features/User/payment/Payment%20Methods/data/Repository/Pay%20By%20Voucher/paybyvoucherrepository.dart'
    as _i115;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart'
    as _i141;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/transferrepository.dart'
    as _i142;
import 'Features/User/payment/Payment%20Methods/data/Repository/Wallet/baserepositorywallet.dart'
    as _i116;
import 'Features/User/payment/Payment%20Methods/data/Repository/Wallet/walletrepository.dart'
    as _i117;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Check%20Balance/checkbalancewebservice.dart'
    as _i85;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart'
    as _i87;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Pay%20By%20Voucher/paybyvoucherwebservice.dart'
    as _i60;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart'
    as _i48;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Wallet/walletwebservice.dart'
    as _i91;
import 'Features/User/payment/Payment%20Methods/Manager/Check%20Balance%20Cubit/check_balance_cubit.dart'
    as _i188;
import 'Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart'
    as _i216;
import 'Features/User/payment/Payment%20Methods/Manager/Pay%20By%20Voucher%20Cubit/pay_by_voucher_cubit.dart'
    as _i179;
import 'Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart'
    as _i168;
import 'Features/User/payment/Payment%20Methods/Manager/Wallet%20Cubit/wallet_cubit.dart'
    as _i167;
import 'Features/User/Points/data/Repository/baserepositoryswap.dart' as _i53;
import 'Features/User/Points/data/Repository/swaprepository.dart' as _i54;
import 'Features/User/Points/data/WebService/swapwebservice.dart' as _i14;
import 'Features/User/Points/Swap%20Points%20Cubit/swap_cubit.dart' as _i66;
import 'Features/User/profile/data/Repostry/Delete%20Account%20Repository/baserepositorydeleteaccount.dart'
    as _i101;
import 'Features/User/profile/data/Repostry/Delete%20Account%20Repository/deleteaccountrepository.dart'
    as _i102;
import 'Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/baserepositoryupdateprofilephoto.dart'
    as _i144;
import 'Features/User/profile/data/Repostry/Update%20Profile%20Photo%20Repository/updateprofilephotorepository.dart'
    as _i145;
import 'Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/baserepositoryupdateuserinfo.dart'
    as _i95;
import 'Features/User/profile/data/Repostry/Update%20User%20Info%20Repository/updateuserinforepository.dart'
    as _i96;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo.dart'
    as _i198;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/baserepositorygetuserinfo2.dart'
    as _i176;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/getuserinfo2repository.dart'
    as _i177;
import 'Features/User/profile/data/Repostry/User%20Info%20Repository/getusrinforepository.dart'
    as _i199;
import 'Features/User/profile/data/Web%20Service/Delete%20Account%20WebService/deleteaccountwebservice.dart'
    as _i46;
import 'Features/User/profile/data/Web%20Service/Update%20Photo%20Profile%20WebService/updateprofilephotowebservice.dart'
    as _i18;
import 'Features/User/profile/data/Web%20Service/Update%20User%20Info%20WebService/updateuserinfowebserivce.dart'
    as _i77;
import 'Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfo2webservice.dart'
    as _i70;
import 'Features/User/profile/data/Web%20Service/User%20Info%20WebService/getuserinfowebservice.dart'
    as _i97;
import 'Features/User/profile/Manager/Delete%20Account%20Cubit/delete_account_cubit.dart'
    as _i150;
import 'Features/User/profile/Manager/Get%20User%20Info%202%20Cubit/get_user_info2_cubit.dart'
    as _i200;
import 'Features/User/profile/Manager/Get%20User%20Info%20Cubit/get_user_info_cubit.dart'
    as _i229;
import 'Features/User/profile/Manager/Update%20Profile%20Photo%20Cubit/update_profile_photo_cubit.dart'
    as _i197;
import 'Features/User/profile/Manager/Update%20User%20Info%20Cubit/update_user_info_cubit.dart'
    as _i131;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchbyqr.dart'
    as _i120;
import 'Features/User/search/Normal%20Search/data/Repository/baserepositorysearchresults.dart'
    as _i157;
import 'Features/User/search/Normal%20Search/data/Repository/searchbyqrrepository.dart'
    as _i121;
import 'Features/User/search/Normal%20Search/data/Repository/searchresultsrepository.dart'
    as _i158;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchbyqrwebservice.dart'
    as _i98;
import 'Features/User/search/Normal%20Search/data/Web%20Service/searchresultswebservice.dart'
    as _i49;
import 'Features/User/search/Normal%20Search/Search%20By%20QR%20Cubit/search_by_qr_cubit.dart'
    as _i151;
import 'Features/User/search/Normal%20Search/Searh%20Results%20Cubit/search_results_cubit.dart'
    as _i217;
import 'Features/User/search/Populer%20Products/data/Repository/baserepositorypopularproducts.dart'
    as _i62;
import 'Features/User/search/Populer%20Products/data/Repository/popularproductsrepository.dart'
    as _i63;
import 'Features/User/search/Populer%20Products/data/webService/popularproductswebservice.dart'
    as _i27;
import 'Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart'
    as _i138;
import 'Features/User/Vouchers/data/Repository/Create%20Voucher%20Repository/baserepositorycreatevoucher.dart'
    as _i203;
import 'Features/User/Vouchers/data/Repository/Create%20Voucher%20Repository/createvoucherrepository.dart'
    as _i204;
import 'Features/User/Vouchers/data/Repository/Get%20Vouchers%20Repository/baserepositorygetvouchers.dart'
    as _i56;
import 'Features/User/Vouchers/data/Repository/Get%20Vouchers%20Repository/getvouchersrepository.dart'
    as _i57;
import 'Features/User/Vouchers/data/WebService/Create%20Voucher%20WebService/createvoucherwebservice.dart'
    as _i67;
import 'Features/User/Vouchers/data/WebService/Get%20Vouchers%20WebService/getvoucherswebservice.dart'
    as _i20;
import 'Features/User/Vouchers/Manager/Create%20Voucher%20Cubit/create_voucher_cubit.dart'
    as _i228;
import 'Features/User/Vouchers/Manager/Get%20Vouchers%20Cubit/get_vouchers_cubit.dart'
    as _i137;
import 'Features/User/wallet/Add%20Balance%20Cubit/add_balance_cubit.dart'
    as _i224;
import 'Features/User/wallet/data/repository/addbalancerepository.dart'
    as _i206;
import 'Features/User/wallet/data/repository/baserepositoryaddbalance.dart'
    as _i205;
import 'Features/User/wallet/data/webservice/addbalancewebservice.dart' as _i61;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositorybasevisitor.dart'
    as _i174;
import 'Features/Visitor/Details/data/Repository/Base%20Repository%20Visitor/baserepositoryvisitor.dart'
    as _i175;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/baserepositorybookvisitor.dart'
    as _i172;
import 'Features/Visitor/Details/data/Repository/Book%20Repository%20Visitor/bookrepositoryvisitor.dart'
    as _i173;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/baserepositorygamevisitor.dart'
    as _i75;
import 'Features/Visitor/Details/data/Repository/Game%20Repository%20Visitor/gamerepositoryvisitor.dart'
    as _i76;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/baserepositoryquraanvisitor.dart'
    as _i152;
import 'Features/Visitor/Details/data/Repository/Quraan%20Repository%20Visitor/quraanrepositoryvisitor.dart'
    as _i153;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/baserepositorystationeryvisitor.dart'
    as _i139;
import 'Features/Visitor/Details/data/Repository/Stationery%20Repository%20Visitor/stationeryrepositoryvisitor.dart'
    as _i140;
import 'Features/Visitor/Details/data/Web%20Service/base_webservicevisitor.dart'
    as _i21;
import 'Features/Visitor/Details/data/Web%20Service/book_webservicevisitor.dart'
    as _i36;
import 'Features/Visitor/Details/data/Web%20Service/game_webservicevisitor.dart'
    as _i39;
import 'Features/Visitor/Details/data/Web%20Service/quraan_webservicevisitor.dart'
    as _i19;
import 'Features/Visitor/Details/data/Web%20Service/stationery_webservicevisitor.dart'
    as _i12;
import 'Features/Visitor/Details/Manager/Base%20Visitor%20Cubit/base_visitor_cubit.dart'
    as _i178;
import 'Features/Visitor/Details/Manager/Book%20Visitor%20Cubit/book_visitor_cubit.dart'
    as _i191;
import 'Features/Visitor/Details/Manager/Game%20Visitor%20Cubit/game_visitor_cubit.dart'
    as _i156;
import 'Features/Visitor/Details/Manager/Quraan%20Visitor%20Cubit/quraan_visitor_cubit.dart'
    as _i207;
import 'Features/Visitor/Details/Manager/Stationery%20Visitor%20Cbit/stationery_visitor_cubit.dart'
    as _i226;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/cubit/section_visitor_cubit.dart'
    as _i222;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/baserepositorysectionvisitor.dart'
    as _i159;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Repository/sectionvisitorrepository.dart'
    as _i160;
import 'Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Web%20Service/sectionvisitorwebservice.dart'
    as _i22;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i127;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i128;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i90;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i220;

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
    gh.singleton<_i14.SwapWebService>(
        () => _i14.SwapWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.AdsWebService>(
        () => _i15.AdsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.DisLikeWebService>(
        () => _i16.DisLikeWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.SectionWebService>(
        () => _i17.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.UpdateProfilePhotoWebService>(
        () => _i18.UpdateProfilePhotoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.QuraanWebServiceVisitor>(
        () => _i19.QuraanWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.GetVouchersWebService>(
        () => _i20.GetVouchersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.BaseWebServiceVisitor>(
        () => _i21.BaseWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.SectionVisitorWebService>(
        () => _i22.SectionVisitorWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.CreateAccountWebService>(
        () => _i23.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.OrderDetailsWebService>(
        () => _i24.OrderDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.GetNotificationsWebService>(
        () => _i25.GetNotificationsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.SendOrderWebService>(
        () => _i26.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i27.PopularProductsWebService>(
        () => _i27.PopularProductsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i28.GetProductsMainSectionWebService>(
        () => _i28.GetProductsMainSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i29.DeleteItemFromCartWebService>(
        () => _i29.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i30.BaseRepositoryAds>(() => _i31.AdsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          adsWebService: gh<_i15.AdsWebService>(),
        ));
    gh.singleton<_i32.NewsWebService>(
        () => _i32.NewsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i33.BaseWebService>(
        () => _i33.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i34.AddtoCartWebService>(
        () => _i34.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i35.NewDetailsWebService>(
        () => _i35.NewDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i36.BookWebServiceVisitor>(
        () => _i36.BookWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i37.BaseRepositoryGetSubSections>(
        () => _i38.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i13.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i39.GameWebServiceVisitor>(
        () => _i39.GameWebServiceVisitorImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i40.GameWebService>(
        () => _i40.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i41.DetailsofOfferWebService>(
        () => _i41.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i42.GetProductsofSubSectionWebService>(() =>
        _i42.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i43.BaseRepositoryGetProductsMainSection>(
        () => _i44.GetProductsMainSectionrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsMainSectionWebService:
                  gh<_i28.GetProductsMainSectionWebService>(),
            ));
    gh.factory<_i45.AdsCubit>(
        () => _i45.AdsCubit(gh<_i30.BaseRepositoryAds>()));
    gh.singleton<_i46.DeleteAccountWebService>(
        () => _i46.DeleteAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i47.LikeWebService>(
        () => _i47.LikeWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i48.TransferWebService>(
        () => _i48.TransferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i49.SearchResultsWebService>(
        () => _i49.SearchResultsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i50.RatingWebService>(
        () => _i50.RatingWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i51.BaseReposotryCreateAccount>(
        () => _i52.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i23.CreateAccountWebService>(),
            ));
    gh.singleton<_i53.BaseRepositorySwap>(() => _i54.SwapRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          swapWebService: gh<_i14.SwapWebService>(),
        ));
    gh.singleton<_i55.QuantityUpdateWebService>(
        () => _i55.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i56.BaseRepositoryGetVouchers>(
        () => _i57.GetVouchersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getVouchersWebService: gh<_i20.GetVouchersWebService>(),
            ));
    gh.singleton<_i58.BaseRepositoryLike>(() => _i59.LikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          likeWebService: gh<_i47.LikeWebService>(),
        ));
    gh.singleton<_i60.PayByVoucherWebService>(
        () => _i60.PayByVoucherWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i61.AddBalanceWebService>(
        () => _i61.AddBalanceWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i62.BaseRepositoryPopularProducts>(
        () => _i63.PopularProductsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              popularProductsWebService: gh<_i27.PopularProductsWebService>(),
            ));
    gh.singleton<_i64.SendOfferWebService>(
        () => _i64.SendOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i65.GetFavoritesWebService>(
        () => _i65.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i66.SwapCubit>(
        () => _i66.SwapCubit(gh<_i53.BaseRepositorySwap>()));
    gh.singleton<_i67.CreateVoucherWebService>(
        () => _i67.CreateVoucherWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i68.BaseRepositoryQuantityUpdate>(
        () => _i69.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i55.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i70.GetUserInfo2WebService>(
        () => _i70.GetUserInfo2WebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i71.StationeryWebService>(
        () => _i71.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i72.LoginWebService>(
        () => _i72.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i73.CartItemsWebService>(
        () => _i73.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i74.BookWebService>(
        () => _i74.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i75.BaseRepositoryGameVisitor>(
        () => _i76.GameRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              gameWebServiceVisitor: gh<_i39.GameWebServiceVisitor>(),
            ));
    gh.singleton<_i77.UpdateUserInfoWebService>(
        () => _i77.UpdateUserInfoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i78.BaseRepositoryDeleteItemFromCart>(() =>
        _i79.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i29.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i80.AddToFavoritesWebService>(
        () => _i80.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i81.GetOrdersWebService>(
        () => _i81.GetOrdersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i82.BaseRepositorySendOrder>(
        () => _i83.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i26.SendOrderWebService>(),
            ));
    gh.singleton<_i84.GetAllOffersWebService>(
        () => _i84.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i85.CheckBalanceWebService>(
        () => _i85.CheckBalanceWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i86.GetProductsMainSectionCubit>(() =>
        _i86.GetProductsMainSectionCubit(
            gh<_i43.BaseRepositoryGetProductsMainSection>()));
    gh.singleton<_i87.OnArrivalWebService>(
        () => _i87.OnArrivalWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i88.BaseRepositoryDetailsofOffer>(
        () => _i89.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i41.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i90.GetCitiesWebService>(
        () => _i90.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i91.WalletWebService>(
        () => _i91.WalletWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i92.ChangeStateNoteWebService>(
        () => _i92.ChangeStateNoteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i93.BaseRepositoryCheckBalance>(
        () => _i94.CheckBalanceRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              checkBalanceWebService: gh<_i85.CheckBalanceWebService>(),
            ));
    gh.singleton<_i95.BaseRepositoryUpdateUserInfo>(
        () => _i96.UpdateUserInfoRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              updateUserInfoWebService: gh<_i77.UpdateUserInfoWebService>(),
            ));
    gh.singleton<_i97.GetUserInfoWebService>(
        () => _i97.GetUserInfoWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i98.SearchByQrWebService>(
        () => _i98.SearchByQrWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i99.BaseRepositoryOrderDetails>(
        () => _i100.OrderDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              orderDetailsWebService: gh<_i24.OrderDetailsWebService>(),
            ));
    gh.singleton<_i101.BaseRepositoryDeleteAccount>(
        () => _i102.DeleteAccountRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              deleteAccountWebService: gh<_i46.DeleteAccountWebService>(),
            ));
    gh.singleton<_i103.BaseRepositoryGetAllOffers>(
        () => _i104.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i84.GetAllOffersWebService>(),
            ));
    gh.singleton<_i105.BaseRepositorySendOffer>(
        () => _i106.SendOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOfferWebService: gh<_i64.SendOfferWebService>(),
            ));
    gh.singleton<_i107.BaseReposotryLogin>(() => _i108.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i72.LoginWebService>(),
        ));
    gh.singleton<_i109.BaseRepositoryNewDetails>(
        () => _i110.NewDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              newDetailsWebService: gh<_i35.NewDetailsWebService>(),
            ));
    gh.singleton<_i111.BaseRepositoryAddToFavorites>(
        () => _i112.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i80.AddToFavoritesWebService>(),
            ));
    gh.factory<_i113.NewDetailsCubit>(
        () => _i113.NewDetailsCubit(gh<_i109.BaseRepositoryNewDetails>()));
    gh.singleton<_i114.BaseRepositoryPayByVoucher>(
        () => _i115.PatByVoucherRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              payByVoucherWebService: gh<_i60.PayByVoucherWebService>(),
            ));
    gh.singleton<_i116.BaseRepositoryWallet>(() => _i117.WalletRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          walletWebService: gh<_i91.WalletWebService>(),
        ));
    gh.singleton<_i118.BaseRepositoryGetProductsOfSubSection>(
        () => _i119.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i42.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i120.BaseRepositorySearchByQr>(
        () => _i121.SearchByQrRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              searchByQrWebService: gh<_i98.SearchByQrWebService>(),
            ));
    gh.singleton<_i122.BaseRepositoryGame>(() => _i123.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i40.GameWebService>(),
        ));
    gh.singleton<_i124.BaseRepositoryCartItems>(
        () => _i125.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i73.CartItemsWebService>(),
            ));
    gh.factory<_i126.GetsubsectionsCubit>(() =>
        _i126.GetsubsectionsCubit(gh<_i37.BaseRepositoryGetSubSections>()));
    gh.singleton<_i127.BaseRepositoryGetCities>(
        () => _i128.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i90.GetCitiesWebService>(),
            ));
    gh.singleton<_i129.BaseRepositoryStationery>(
        () => _i130.StationeryRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              stationeryWebService: gh<_i71.StationeryWebService>(),
            ));
    gh.factory<_i131.UpdateUserInfoCubit>(() =>
        _i131.UpdateUserInfoCubit(gh<_i95.BaseRepositoryUpdateUserInfo>()));
    gh.factory<_i132.GameCubit>(
        () => _i132.GameCubit(gh<_i122.BaseRepositoryGame>()));
    gh.singleton<_i133.BaseRepositorySection>(() => _i134.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i17.SectionWebService>(),
        ));
    gh.singleton<_i135.BaseRepositoryDisLike>(() => _i136.DisLikeRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          disLikeWebService: gh<_i16.DisLikeWebService>(),
        ));
    gh.factory<_i137.GetVouchersCubit>(
        () => _i137.GetVouchersCubit(gh<_i56.BaseRepositoryGetVouchers>()));
    gh.factory<_i138.PopularProductsCubit>(() =>
        _i138.PopularProductsCubit(gh<_i62.BaseRepositoryPopularProducts>()));
    gh.singleton<_i139.BaseRepositoryStationeryVisitor>(() =>
        _i140.StationeryRepositoryVisitorImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebServiceVisitor: gh<_i12.StationeryWebServiceVisitor>(),
        ));
    gh.singleton<_i141.BaseRepositoryTransfer>(
        () => _i142.TransferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              transferWebService: gh<_i48.TransferWebService>(),
            ));
    gh.factory<_i143.QuantitiyupdateCubit>(() =>
        _i143.QuantitiyupdateCubit(gh<_i68.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i144.BaseRepositoryUpdateProfilePhoto>(() =>
        _i145.UpdateProfilePhotoRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          updateProfilePhotoWebService: gh<_i18.UpdateProfilePhotoWebService>(),
        ));
    gh.singleton<_i146.BaseRepositoryQuraan>(() => _i147.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i148.SectionCubit>(
        () => _i148.SectionCubit(gh<_i133.BaseRepositorySection>()));
    gh.factory<_i149.DisLikeCubit>(
        () => _i149.DisLikeCubit(gh<_i135.BaseRepositoryDisLike>()));
    gh.factory<_i150.DeleteAccountCubit>(() =>
        _i150.DeleteAccountCubit(gh<_i101.BaseRepositoryDeleteAccount>()));
    gh.factory<_i151.SearchByQrCubit>(
        () => _i151.SearchByQrCubit(gh<_i120.BaseRepositorySearchByQr>()));
    gh.singleton<_i152.BaseRepositoryQuraanVisitor>(
        () => _i153.QuraanRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quraanWebServiceVisitor: gh<_i19.QuraanWebServiceVisitor>(),
            ));
    gh.singleton<_i154.BaseRepositoryBase>(() => _i155.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i33.BaseWebService>(),
        ));
    gh.factory<_i156.GameVisitorCubit>(
        () => _i156.GameVisitorCubit(gh<_i75.BaseRepositoryGameVisitor>()));
    gh.singleton<_i157.BaseRepositorySearchResults>(
        () => _i158.SearchResultsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              resultsWebService: gh<_i49.SearchResultsWebService>(),
            ));
    gh.singleton<_i159.BaseRepositorySectionVisitor>(
        () => _i160.SectionVisitorRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sectionVisitorWebService: gh<_i22.SectionVisitorWebService>(),
            ));
    gh.singleton<_i161.BaseRepositoryAddtoCart>(
        () => _i162.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i34.AddtoCartWebService>(),
            ));
    gh.factory<_i163.BaseCubit>(
        () => _i163.BaseCubit(gh<_i154.BaseRepositoryBase>()));
    gh.factory<_i164.AddtofavoriteCubit>(() =>
        _i164.AddtofavoriteCubit(gh<_i111.BaseRepositoryAddToFavorites>()));
    gh.factory<_i165.DetailsofofferCubit>(() =>
        _i165.DetailsofofferCubit(gh<_i88.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i166.AddtocartCubit>(
        () => _i166.AddtocartCubit(gh<_i161.BaseRepositoryAddtoCart>()));
    gh.factory<_i167.WalletCubit>(
        () => _i167.WalletCubit(gh<_i116.BaseRepositoryWallet>()));
    gh.factory<_i168.TransferCubit>(
        () => _i168.TransferCubit(gh<_i141.BaseRepositoryTransfer>()));
    gh.singleton<_i169.BaseRepositoryGetNotifications>(
        () => _i170.GetNotificationsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getNotificationsWebService: gh<_i25.GetNotificationsWebService>(),
            ));
    gh.factory<_i171.CreateaccountCubit>(
        () => _i171.CreateaccountCubit(gh<_i51.BaseReposotryCreateAccount>()));
    gh.singleton<_i172.BaseRepositoryBookVisitor>(
        () => _i173.BookRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              bookWebServiceVisitor: gh<_i36.BookWebServiceVisitor>(),
            ));
    gh.singleton<_i174.BaseRepositoryBaseVisitor>(
        () => _i175.BaseRepositoryVisitorImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              baseWebServiceVisitor: gh<_i21.BaseWebServiceVisitor>(),
            ));
    gh.singleton<_i176.BaseRepositoryGetUserInfo2>(
        () => _i177.GetUserInfo2RepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserInfo2WebService: gh<_i70.GetUserInfo2WebService>(),
            ));
    gh.factory<_i178.BaseVisitorCubit>(
        () => _i178.BaseVisitorCubit(gh<_i174.BaseRepositoryBaseVisitor>()));
    gh.factory<_i179.PayByVoucherCubit>(
        () => _i179.PayByVoucherCubit(gh<_i114.BaseRepositoryPayByVoucher>()));
    gh.singleton<_i180.BaseRepositoryChangeStateNote>(
        () => _i181.ChangeStateNoteRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              changeStateNoteWebService: gh<_i92.ChangeStateNoteWebService>(),
            ));
    gh.singleton<_i182.BaseRepositoryGetFavorites>(
        () => _i183.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i65.GetFavoritesWebService>(),
            ));
    gh.singleton<_i184.BaseRepositoryNews>(() => _i185.NewsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          newsWebService: gh<_i32.NewsWebService>(),
        ));
    gh.singleton<_i186.BaseRepositoryGetOrders>(
        () => _i187.GetOrdersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getOrdersWebService: gh<_i81.GetOrdersWebService>(),
            ));
    gh.factory<_i188.CheckBalanceCubit>(
        () => _i188.CheckBalanceCubit(gh<_i93.BaseRepositoryCheckBalance>()));
    gh.factory<_i189.LikeCubit>(
        () => _i189.LikeCubit(gh<_i58.BaseRepositoryLike>()));
    gh.factory<_i190.LoginCubit>(() => _i190.LoginCubit(
          gh<_i107.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i191.BookVisitorCubit>(
        () => _i191.BookVisitorCubit(gh<_i172.BaseRepositoryBookVisitor>()));
    gh.factory<_i192.OrderDetailsCubit>(
        () => _i192.OrderDetailsCubit(gh<_i99.BaseRepositoryOrderDetails>()));
    gh.factory<_i193.SendOrderCubit>(
        () => _i193.SendOrderCubit(gh<_i82.BaseRepositorySendOrder>()));
    gh.factory<_i194.GetproductsofsubsectionCubit>(() =>
        _i194.GetproductsofsubsectionCubit(
            gh<_i118.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i195.BaseRepositoryBook>(() => _i196.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i74.BookWebService>(),
        ));
    gh.factory<_i197.UpdateProfilePhotoCubit>(() =>
        _i197.UpdateProfilePhotoCubit(
            gh<_i144.BaseRepositoryUpdateProfilePhoto>()));
    gh.singleton<_i198.BaseRepositoryGetUserInfo>(
        () => _i199.GetUserInfoRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getUserInfoWebService: gh<_i97.GetUserInfoWebService>(),
            ));
    gh.factory<_i200.GetUserInfo2Cubit>(
        () => _i200.GetUserInfo2Cubit(gh<_i176.BaseRepositoryGetUserInfo2>()));
    gh.singleton<_i201.BaseRepositoryRating>(() => _i202.RatingRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          ratingWebService: gh<_i50.RatingWebService>(),
        ));
    gh.singleton<_i203.BaseRepositoryCreateVoucher>(
        () => _i204.CreateVoucherRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              createVoucherWebService: gh<_i67.CreateVoucherWebService>(),
            ));
    gh.singleton<_i205.BaseRepositoryAddBalance>(
        () => _i206.AddBalanceRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addBalanceWebService: gh<_i61.AddBalanceWebService>(),
            ));
    gh.factory<_i207.QuraanVisitorCubit>(() =>
        _i207.QuraanVisitorCubit(gh<_i152.BaseRepositoryQuraanVisitor>()));
    gh.factory<_i208.GetalloffersCubit>(
        () => _i208.GetalloffersCubit(gh<_i103.BaseRepositoryGetAllOffers>()));
    gh.factory<_i209.CartitemsCubit>(
        () => _i209.CartitemsCubit(gh<_i124.BaseRepositoryCartItems>()));
    gh.singleton<_i210.BaseRepositoryOnArrival>(
        () => _i211.OnArrivalRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              onArrivalWebService: gh<_i87.OnArrivalWebService>(),
            ));
    gh.factory<_i212.RatingCubit>(
        () => _i212.RatingCubit(gh<_i201.BaseRepositoryRating>()));
    gh.factory<_i213.StationeryCubit>(
        () => _i213.StationeryCubit(gh<_i129.BaseRepositoryStationery>()));
    gh.factory<_i214.DeleteitemfromcartCubit>(() =>
        _i214.DeleteitemfromcartCubit(
            gh<_i78.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i215.GetOrdersCubit>(
        () => _i215.GetOrdersCubit(gh<_i186.BaseRepositoryGetOrders>()));
    gh.factory<_i216.OnArrivalCubit>(
        () => _i216.OnArrivalCubit(gh<_i210.BaseRepositoryOnArrival>()));
    gh.factory<_i217.SearchResultsCubit>(() =>
        _i217.SearchResultsCubit(gh<_i157.BaseRepositorySearchResults>()));
    gh.factory<_i218.SendOfferCubit>(
        () => _i218.SendOfferCubit(gh<_i105.BaseRepositorySendOffer>()));
    gh.factory<_i219.NewsCubit>(
        () => _i219.NewsCubit(gh<_i184.BaseRepositoryNews>()));
    gh.factory<_i220.GetCitiesCubit>(
        () => _i220.GetCitiesCubit(gh<_i127.BaseRepositoryGetCities>()));
    gh.factory<_i221.GetNotificationsCubit>(() => _i221.GetNotificationsCubit(
        gh<_i169.BaseRepositoryGetNotifications>()));
    gh.factory<_i222.SectionVisitorCubit>(() =>
        _i222.SectionVisitorCubit(gh<_i159.BaseRepositorySectionVisitor>()));
    gh.factory<_i223.QuraanCubit>(
        () => _i223.QuraanCubit(gh<_i146.BaseRepositoryQuraan>()));
    gh.factory<_i224.AddBalanceCubit>(
        () => _i224.AddBalanceCubit(gh<_i205.BaseRepositoryAddBalance>()));
    gh.factory<_i225.GetfavoritesCubit>(
        () => _i225.GetfavoritesCubit(gh<_i182.BaseRepositoryGetFavorites>()));
    gh.factory<_i226.StationeryVisitorCubit>(() => _i226.StationeryVisitorCubit(
        gh<_i139.BaseRepositoryStationeryVisitor>()));
    gh.factory<_i227.ChangeStateNoteCubit>(() =>
        _i227.ChangeStateNoteCubit(gh<_i180.BaseRepositoryChangeStateNote>()));
    gh.factory<_i228.CreateVoucherCubit>(() =>
        _i228.CreateVoucherCubit(gh<_i203.BaseRepositoryCreateVoucher>()));
    gh.factory<_i229.GetUserInfoCubit>(
        () => _i229.GetUserInfoCubit(gh<_i198.BaseRepositoryGetUserInfo>()));
    gh.factory<_i230.BookCubit>(
        () => _i230.BookCubit(gh<_i195.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i231.ThirdPartyInjection {}
