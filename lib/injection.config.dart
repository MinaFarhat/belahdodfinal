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
import 'Core/third_party_injection.dart' as _i123;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i96;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i35;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i36;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i15;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i103;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i61;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i62;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i42;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i88;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i87;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i69;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i70;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i45;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i46;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i39;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i40;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i25;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i43;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i20;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i37;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i92;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i110;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i114;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i81;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i86;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i85;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i107;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i108;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i67;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i68;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i82;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i83;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i74;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i75;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i24;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i44;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i28;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i41;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i89;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i122;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i76;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart'
    as _i120;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i113;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i97;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i98;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i64;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i63;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i38;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i47;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i90;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i121;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i84;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i77;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i78;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i14;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/baserepositorygetproductsmainsection.dart'
    as _i31;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Repostry/getproductsmainsectionrepository.dart'
    as _i32;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/data/Web%20Service/getproductsmainsectionwebservice.dart'
    as _i19;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart'
    as _i52;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i26;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i27;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i12;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i71;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i65;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i66;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i30;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i106;
import 'Features/User/news/data/Repostry/Ads/adsrepository.dart' as _i22;
import 'Features/User/news/data/Repostry/Ads/baserepositoryads.dart' as _i21;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i54;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i55;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i59;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i60;
import 'Features/User/news/data/Repostry/News/baserepositorynews.dart' as _i99;
import 'Features/User/news/data/Repostry/News/newsrepository.dart' as _i100;
import 'Features/User/news/data/Web%20Service/Ads/adswebservice.dart' as _i13;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i29;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i51;
import 'Features/User/news/data/Web%20Service/News/newswebservice.dart' as _i23;
import 'Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart' as _i33;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i91;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i109;
import 'Features/User/news/Manager/News%20Cubit/news_cubit.dart' as _i117;
import 'Features/User/note/cubit/get_notifications_cubit.dart' as _i119;
import 'Features/User/note/data/Repostry/baserepositorygetnotifications.dart'
    as _i94;
import 'Features/User/note/data/Repostry/getnotificationsentity.dart' as _i95;
import 'Features/User/note/data/Web%20Service/getnotificationswebservice.dart'
    as _i17;
import 'Features/User/Orders/main%20orders/data/Repostry/baserepositorygetorders.dart'
    as _i101;
import 'Features/User/Orders/main%20orders/data/Repostry/getordersrepository.dart'
    as _i102;
import 'Features/User/Orders/main%20orders/data/Web%20Service/getorderswebservice.dart'
    as _i48;
import 'Features/User/Orders/main%20orders/Get%20Orders%20Cubit/get_orders_cubit.dart'
    as _i115;
import 'Features/User/Orders/Order%20Details/data/Repostry/baserepositoryorderdetails.dart'
    as _i57;
import 'Features/User/Orders/Order%20Details/data/Repostry/orderdetailsrepository.dart'
    as _i58;
import 'Features/User/Orders/Order%20Details/data/Web%20Service/orderdetailswebservice.dart'
    as _i16;
import 'Features/User/Orders/Order%20Details/Order%20Details%20Cubit/order_details_cubit.dart'
    as _i104;
import 'Features/User/payment/Address/data/Repository/baserepositorysendorder.dart'
    as _i49;
import 'Features/User/payment/Address/data/Repository/sendorderrepository.dart'
    as _i50;
import 'Features/User/payment/Address/data/WebService/sendorderwebservice.dart'
    as _i18;
import 'Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart'
    as _i105;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/baserepositoryonarrival.dart'
    as _i111;
import 'Features/User/payment/Payment%20Methods/data/Repository/On%20Arrival/onarrivalrepository.dart'
    as _i112;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/baserepositorytransfer.dart'
    as _i79;
import 'Features/User/payment/Payment%20Methods/data/Repository/Transfer/transferrepository.dart'
    as _i80;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/On%20Arrival/onarrivalwebservice.dart'
    as _i53;
import 'Features/User/payment/Payment%20Methods/data/Web%20Service/Transfer/transferwebservice.dart'
    as _i34;
import 'Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart'
    as _i116;
import 'Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart'
    as _i93;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/baserepositorygetcities.dart'
    as _i72;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Repository/getcitiesrepository.dart'
    as _i73;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Web%20Service/getcitieswebservice.dart'
    as _i56;
import 'Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart'
    as _i118;

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
    gh.singleton<_i13.AdsWebService>(
        () => _i13.AdsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i14.SectionWebService>(
        () => _i14.SectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i15.CreateAccountWebService>(
        () => _i15.CreateAccountWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i16.OrderDetailsWebService>(
        () => _i16.OrderDetailsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i17.GetNotificationsWebService>(
        () => _i17.GetNotificationsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i18.SendOrderWebService>(
        () => _i18.SendOrderWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i19.GetProductsMainSectionWebService>(
        () => _i19.GetProductsMainSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i20.DeleteItemFromCartWebService>(
        () => _i20.DeleteItemFromCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i21.BaseRepositoryAds>(() => _i22.AdsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          adsWebService: gh<_i13.AdsWebService>(),
        ));
    gh.singleton<_i23.NewsWebService>(
        () => _i23.NewsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i24.BaseWebService>(
        () => _i24.BaseWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i25.AddtoCartWebService>(
        () => _i25.AddtoCartWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.BaseRepositoryGetSubSections>(
        () => _i27.GetSubSectionsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getSubSectionsWebService: gh<_i12.GetSubSectionsWebService>(),
            ));
    gh.singleton<_i28.GameWebService>(
        () => _i28.GameWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i29.DetailsofOfferWebService>(
        () => _i29.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i30.GetProductsofSubSectionWebService>(() =>
        _i30.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.BaseRepositoryGetProductsMainSection>(
        () => _i32.GetProductsMainSectionrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsMainSectionWebService:
                  gh<_i19.GetProductsMainSectionWebService>(),
            ));
    gh.factory<_i33.AdsCubit>(
        () => _i33.AdsCubit(gh<_i21.BaseRepositoryAds>()));
    gh.singleton<_i34.TransferWebService>(
        () => _i34.TransferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i35.BaseReposotryCreateAccount>(
        () => _i36.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i15.CreateAccountWebService>(),
            ));
    gh.singleton<_i37.QuantityUpdateWebService>(
        () => _i37.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i38.GetFavoritesWebService>(
        () => _i38.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i39.BaseRepositoryQuantityUpdate>(
        () => _i40.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i37.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i41.StationeryWebService>(
        () => _i41.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i42.LoginWebService>(
        () => _i42.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i43.CartItemsWebService>(
        () => _i43.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i44.BookWebService>(
        () => _i44.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i45.BaseRepositoryDeleteItemFromCart>(() =>
        _i46.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i20.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i47.AddToFavoritesWebService>(
        () => _i47.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i48.GetOrdersWebService>(
        () => _i48.GetOrdersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i49.BaseRepositorySendOrder>(
        () => _i50.SendOrderRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              sendOrderWebService: gh<_i18.SendOrderWebService>(),
            ));
    gh.singleton<_i51.GetAllOffersWebService>(
        () => _i51.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.factory<_i52.GetProductsMainSectionCubit>(() =>
        _i52.GetProductsMainSectionCubit(
            gh<_i31.BaseRepositoryGetProductsMainSection>()));
    gh.singleton<_i53.OnArrivalWebService>(
        () => _i53.OnArrivalWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i54.BaseRepositoryDetailsofOffer>(
        () => _i55.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i29.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i56.GetCitiesWebService>(
        () => _i56.GetCitiesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i57.BaseRepositoryOrderDetails>(
        () => _i58.OrderDetailsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              orderDetailsWebService: gh<_i16.OrderDetailsWebService>(),
            ));
    gh.singleton<_i59.BaseRepositoryGetAllOffers>(
        () => _i60.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i51.GetAllOffersWebService>(),
            ));
    gh.singleton<_i61.BaseReposotryLogin>(() => _i62.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i42.LoginWebService>(),
        ));
    gh.singleton<_i63.BaseRepositoryAddToFavorites>(
        () => _i64.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i47.AddToFavoritesWebService>(),
            ));
    gh.singleton<_i65.BaseRepositoryGetProductsOfSubSection>(
        () => _i66.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i30.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i67.BaseRepositoryGame>(() => _i68.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i28.GameWebService>(),
        ));
    gh.singleton<_i69.BaseRepositoryCartItems>(
        () => _i70.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i43.CartItemsWebService>(),
            ));
    gh.factory<_i71.GetsubsectionsCubit>(() =>
        _i71.GetsubsectionsCubit(gh<_i26.BaseRepositoryGetSubSections>()));
    gh.singleton<_i72.BaseRepositoryGetCities>(
        () => _i73.GetCitiesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getCitiesWebService: gh<_i56.GetCitiesWebService>(),
            ));
    gh.singleton<_i74.BaseRepositoryStationery>(() => _i75.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i41.StationeryWebService>(),
        ));
    gh.factory<_i76.GameCubit>(
        () => _i76.GameCubit(gh<_i67.BaseRepositoryGame>()));
    gh.singleton<_i77.BaseRepositorySection>(() => _i78.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i14.SectionWebService>(),
        ));
    gh.singleton<_i79.BaseRepositoryTransfer>(() => _i80.TransferRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          transferWebService: gh<_i34.TransferWebService>(),
        ));
    gh.factory<_i81.QuantitiyupdateCubit>(() =>
        _i81.QuantitiyupdateCubit(gh<_i39.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i82.BaseRepositoryQuraan>(() => _i83.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i84.SectionCubit>(
        () => _i84.SectionCubit(gh<_i77.BaseRepositorySection>()));
    gh.singleton<_i85.BaseRepositoryBase>(() => _i86.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i24.BaseWebService>(),
        ));
    gh.singleton<_i87.BaseRepositoryAddtoCart>(
        () => _i88.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i25.AddtoCartWebService>(),
            ));
    gh.factory<_i89.BaseCubit>(
        () => _i89.BaseCubit(gh<_i85.BaseRepositoryBase>()));
    gh.factory<_i90.AddtofavoriteCubit>(
        () => _i90.AddtofavoriteCubit(gh<_i63.BaseRepositoryAddToFavorites>()));
    gh.factory<_i91.DetailsofofferCubit>(() =>
        _i91.DetailsofofferCubit(gh<_i54.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i92.AddtocartCubit>(
        () => _i92.AddtocartCubit(gh<_i87.BaseRepositoryAddtoCart>()));
    gh.factory<_i93.TransferCubit>(
        () => _i93.TransferCubit(gh<_i79.BaseRepositoryTransfer>()));
    gh.singleton<_i94.BaseRepositoryGetNotifications>(
        () => _i95.GetNotificationsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getNotificationsWebService: gh<_i17.GetNotificationsWebService>(),
            ));
    gh.factory<_i96.CreateaccountCubit>(
        () => _i96.CreateaccountCubit(gh<_i35.BaseReposotryCreateAccount>()));
    gh.singleton<_i97.BaseRepositoryGetFavorites>(
        () => _i98.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i38.GetFavoritesWebService>(),
            ));
    gh.singleton<_i99.BaseRepositoryNews>(() => _i100.NewsRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          newsWebService: gh<_i23.NewsWebService>(),
        ));
    gh.singleton<_i101.BaseRepositoryGetOrders>(
        () => _i102.GetOrdersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getOrdersWebService: gh<_i48.GetOrdersWebService>(),
            ));
    gh.factory<_i103.LoginCubit>(() => _i103.LoginCubit(
          gh<_i61.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i104.OrderDetailsCubit>(
        () => _i104.OrderDetailsCubit(gh<_i57.BaseRepositoryOrderDetails>()));
    gh.factory<_i105.SendOrderCubit>(
        () => _i105.SendOrderCubit(gh<_i49.BaseRepositorySendOrder>()));
    gh.factory<_i106.GetproductsofsubsectionCubit>(() =>
        _i106.GetproductsofsubsectionCubit(
            gh<_i65.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i107.BaseRepositoryBook>(() => _i108.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i44.BookWebService>(),
        ));
    gh.factory<_i109.GetalloffersCubit>(
        () => _i109.GetalloffersCubit(gh<_i59.BaseRepositoryGetAllOffers>()));
    gh.factory<_i110.CartitemsCubit>(
        () => _i110.CartitemsCubit(gh<_i69.BaseRepositoryCartItems>()));
    gh.singleton<_i111.BaseRepositoryOnArrival>(
        () => _i112.OnArrivalRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              onArrivalWebService: gh<_i53.OnArrivalWebService>(),
            ));
    gh.factory<_i113.StationeryCubit>(
        () => _i113.StationeryCubit(gh<_i74.BaseRepositoryStationery>()));
    gh.factory<_i114.DeleteitemfromcartCubit>(() =>
        _i114.DeleteitemfromcartCubit(
            gh<_i45.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i115.GetOrdersCubit>(
        () => _i115.GetOrdersCubit(gh<_i101.BaseRepositoryGetOrders>()));
    gh.factory<_i116.OnArrivalCubit>(
        () => _i116.OnArrivalCubit(gh<_i111.BaseRepositoryOnArrival>()));
    gh.factory<_i117.NewsCubit>(
        () => _i117.NewsCubit(gh<_i99.BaseRepositoryNews>()));
    gh.factory<_i118.GetCitiesCubit>(
        () => _i118.GetCitiesCubit(gh<_i72.BaseRepositoryGetCities>()));
    gh.factory<_i119.GetNotificationsCubit>(() =>
        _i119.GetNotificationsCubit(gh<_i94.BaseRepositoryGetNotifications>()));
    gh.factory<_i120.QuraanCubit>(
        () => _i120.QuraanCubit(gh<_i82.BaseRepositoryQuraan>()));
    gh.factory<_i121.GetfavoritesCubit>(
        () => _i121.GetfavoritesCubit(gh<_i97.BaseRepositoryGetFavorites>()));
    gh.factory<_i122.BookCubit>(
        () => _i122.BookCubit(gh<_i107.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i123.ThirdPartyInjection {}
