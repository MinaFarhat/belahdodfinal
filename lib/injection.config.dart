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
import 'Core/third_party_injection.dart' as _i83;
import 'Core/utils/shared_preference_utils.dart' as _i7;
import 'Features/Auth/Create%20Account/cubit/createaccount_cubit.dart' as _i69;
import 'Features/Auth/Create%20Account/Data/Repostry/basereposotrycreateaccount.dart'
    as _i23;
import 'Features/Auth/Create%20Account/Data/Repostry/createaccountrepostry.dart'
    as _i24;
import 'Features/Auth/Create%20Account/Data/Web%20Service/createaccountwebservice.dart'
    as _i14;
import 'Features/Auth/Login/cubit/login_cubit.dart' as _i72;
import 'Features/Auth/Login/data/Repostry/basereposotrylogin.dart' as _i41;
import 'Features/Auth/Login/data/Repostry/loginreposotry.dart' as _i42;
import 'Features/Auth/Login/data/Web%20Service/loginwebservice.dart' as _i30;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/addtocartrepository.dart'
    as _i64;
import 'Features/User/cart/data/Repostry/Add%20To%20Cart/baserepositoryaddtocart.dart'
    as _i63;
import 'Features/User/cart/data/Repostry/Cart%20Items/baserepositorycartitems.dart'
    as _i49;
import 'Features/User/cart/data/Repostry/Cart%20Items/getcartitemsrepository.dart'
    as _i50;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/baserepositorydeleteitemfromcart.dart'
    as _i33;
import 'Features/User/cart/data/Repostry/Delete%20Item%20From%20Cart/deleteitemfromcartrepository.dart'
    as _i34;
import 'Features/User/cart/data/Repostry/Quantity%20Update/baserepositoryquantityupdate.dart'
    as _i27;
import 'Features/User/cart/data/Repostry/Quantity%20Update/quantitiyupdaterepository.dart'
    as _i28;
import 'Features/User/cart/data/Web%20Service/Add%20To%20Cart/addtocartwebservice.dart'
    as _i17;
import 'Features/User/cart/data/Web%20Service/Cart%20Items/cartitemswebservice.dart'
    as _i31;
import 'Features/User/cart/data/Web%20Service/Delete%20Item%20From%20Cart/deleteitemfromcartwebservice.dart'
    as _i15;
import 'Features/User/cart/data/Web%20Service/Quantiity%20Update/quantityupdatewebservice.dart'
    as _i25;
import 'Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart'
    as _i68;
import 'Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart'
    as _i77;
import 'Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart'
    as _i79;
import 'Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart'
    as _i57;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepository.dart'
    as _i62;
import 'Features/User/Details/data/Repostry/Base%20Repository/baserepositorybase.dart'
    as _i61;
import 'Features/User/Details/data/Repostry/Book%20Repository/baserepositorybook.dart'
    as _i74;
import 'Features/User/Details/data/Repostry/Book%20Repository/bookrepository.dart'
    as _i75;
import 'Features/User/Details/data/Repostry/Game%20Repository/baserepositorygame.dart'
    as _i47;
import 'Features/User/Details/data/Repostry/Game%20Repository/gamerepository.dart'
    as _i48;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/baserepositoryquraan.dart'
    as _i58;
import 'Features/User/Details/data/Repostry/Quraan%20Repository/quraanrepository.dart'
    as _i59;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/baserepositorystationery.dart'
    as _i52;
import 'Features/User/Details/data/Repostry/Stationery%20Repository/stationeryrepository.dart'
    as _i53;
import 'Features/User/Details/data/Web%20Service/base_webservice.dart' as _i16;
import 'Features/User/Details/data/Web%20Service/book_webservice.dart' as _i32;
import 'Features/User/Details/data/Web%20Service/game_webservice.dart' as _i20;
import 'Features/User/Details/data/Web%20Service/quraan_webservice.dart'
    as _i11;
import 'Features/User/Details/data/Web%20Service/stationery_webservice.dart'
    as _i29;
import 'Features/User/Details/Manager/Base%20Cubit/base_cubit.dart' as _i65;
import 'Features/User/Details/Manager/Book%20Cubit/book_cubit.dart' as _i82;
import 'Features/User/Details/Manager/Game%20Cubit/game_cubit.dart' as _i54;
import 'Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart' as _i80;
import 'Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart'
    as _i78;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/baserepositorygetfavorites.dart'
    as _i70;
import 'Features/User/favorite/data/Repostry/Get%20Favorites/getfavoritesrepository.dart'
    as _i71;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/addtofavoritesrepository.dart'
    as _i44;
import 'Features/User/favorite/data/Repostry/Is%20Favorite/baserepositoryaddtofavorites.dart'
    as _i43;
import 'Features/User/favorite/data/Web%20Service/Get%20Favorites/getfavoriteswebservice.dart'
    as _i26;
import 'Features/User/favorite/data/Web%20Service/Is%20Favorite/addtofavoritewebservice.dart'
    as _i35;
import 'Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart'
    as _i66;
import 'Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart'
    as _i81;
import 'Features/User/homepage/HomeScreen/cubit/section_cubit.dart' as _i60;
import 'Features/User/homepage/HomeScreen/data/Repostitory/baserepositorysection.dart'
    as _i55;
import 'Features/User/homepage/HomeScreen/data/Repostitory/sectionrepository.dart'
    as _i56;
import 'Features/User/homepage/HomeScreen/data/Web%20Service/sectionwebservice.dart'
    as _i13;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/baserepositorygetsubsections.dart'
    as _i18;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Repostry/getsubsectionrepository.dart'
    as _i19;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/data/Web%20Service/getsubsectionswebservice.dart'
    as _i12;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart'
    as _i51;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/baserepositorygetproductsofsubsection.dart'
    as _i45;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/Repository/getproductsofsubsectionrepository.dart'
    as _i46;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/data/WebService/getproductsofsubsectionwebservice.dart'
    as _i22;
import 'Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart'
    as _i73;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/baserepositorydetailsofoffer.dart'
    as _i37;
import 'Features/User/news/data/Repostry/Details%20of%20Offer/detailsofofferrepository.dart'
    as _i38;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/baserepositorygetalloffers.dart'
    as _i39;
import 'Features/User/news/data/Repostry/Get%20All%20Offers/getalloffersrepository.dart'
    as _i40;
import 'Features/User/news/data/Web%20Service/Details%20of%20Offer/detailsofofferwebservice.dart'
    as _i21;
import 'Features/User/news/data/Web%20Service/Get%20All%20Offers/getallofferswevservice.dart'
    as _i36;
import 'Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart'
    as _i67;
import 'Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart'
    as _i76;

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
    gh.singleton<_i21.DetailsofOfferWebService>(
        () => _i21.DetailsofOfferWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i22.GetProductsofSubSectionWebService>(() =>
        _i22.GetProductsofSubSectionWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i23.BaseReposotryCreateAccount>(
        () => _i24.CreateAccountRepostryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              accountWebService: gh<_i14.CreateAccountWebService>(),
            ));
    gh.singleton<_i25.QuantityUpdateWebService>(
        () => _i25.QuantityUpdateWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i26.GetFavoritesWebService>(
        () => _i26.GetFavoritesWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i27.BaseRepositoryQuantityUpdate>(
        () => _i28.QuantityUpdateRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              quantityUpdateWebService: gh<_i25.QuantityUpdateWebService>(),
            ));
    gh.singleton<_i29.StationeryWebService>(
        () => _i29.StationeryWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i30.LoginWebService>(
        () => _i30.LoginWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i31.CartItemsWebService>(
        () => _i31.CartItemsWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i32.BookWebService>(
        () => _i32.BookWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i33.BaseRepositoryDeleteItemFromCart>(() =>
        _i34.DeleteItemFromCartRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          deleteItemFromCartWebService: gh<_i15.DeleteItemFromCartWebService>(),
        ));
    gh.singleton<_i35.AddToFavoritesWebService>(
        () => _i35.AddToFavoriteWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i36.GetAllOffersWebService>(
        () => _i36.GetAllOffersWebServiceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i37.BaseRepositoryDetailsofOffer>(
        () => _i38.DetailsofOfferRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              detailsofOfferWebService: gh<_i21.DetailsofOfferWebService>(),
            ));
    gh.singleton<_i39.BaseRepositoryGetAllOffers>(
        () => _i40.GetAllOffersRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getAllOffersWebService: gh<_i36.GetAllOffersWebService>(),
            ));
    gh.singleton<_i41.BaseReposotryLogin>(() => _i42.LoginReposotryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          loginWebService: gh<_i30.LoginWebService>(),
        ));
    gh.singleton<_i43.BaseRepositoryAddToFavorites>(
        () => _i44.AddToFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addToFavoriteWebService: gh<_i35.AddToFavoritesWebService>(),
            ));
    gh.singleton<_i45.BaseRepositoryGetProductsOfSubSection>(
        () => _i46.GetProductsofSubSectionRepository(
              networkInfo: gh<_i8.NetworkInfo>(),
              getProductsofSubSectionWebService:
                  gh<_i22.GetProductsofSubSectionWebService>(),
            ));
    gh.singleton<_i47.BaseRepositoryGame>(() => _i48.GameRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          gameWebService: gh<_i20.GameWebService>(),
        ));
    gh.singleton<_i49.BaseRepositoryCartItems>(
        () => _i50.GetCartItemsRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              cartItemsWebService: gh<_i31.CartItemsWebService>(),
            ));
    gh.factory<_i51.GetsubsectionsCubit>(() =>
        _i51.GetsubsectionsCubit(gh<_i18.BaseRepositoryGetSubSections>()));
    gh.singleton<_i52.BaseRepositoryStationery>(() => _i53.StationeryRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          stationeryWebService: gh<_i29.StationeryWebService>(),
        ));
    gh.factory<_i54.GameCubit>(
        () => _i54.GameCubit(gh<_i47.BaseRepositoryGame>()));
    gh.singleton<_i55.BaseRepositorySection>(() => _i56.SectionRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          sectionWebService: gh<_i13.SectionWebService>(),
        ));
    gh.factory<_i57.QuantitiyupdateCubit>(() =>
        _i57.QuantitiyupdateCubit(gh<_i27.BaseRepositoryQuantityUpdate>()));
    gh.singleton<_i58.BaseRepositoryQuraan>(() => _i59.QuraanRepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          quraanWebService: gh<_i11.QuraanWebService>(),
        ));
    gh.factory<_i60.SectionCubit>(
        () => _i60.SectionCubit(gh<_i55.BaseRepositorySection>()));
    gh.singleton<_i61.BaseRepositoryBase>(() => _i62.BaseRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseWebService: gh<_i16.BaseWebService>(),
        ));
    gh.singleton<_i63.BaseRepositoryAddtoCart>(
        () => _i64.AddtoCartRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              addtoCartWebService: gh<_i17.AddtoCartWebService>(),
            ));
    gh.factory<_i65.BaseCubit>(
        () => _i65.BaseCubit(gh<_i61.BaseRepositoryBase>()));
    gh.factory<_i66.AddtofavoriteCubit>(
        () => _i66.AddtofavoriteCubit(gh<_i43.BaseRepositoryAddToFavorites>()));
    gh.factory<_i67.DetailsofofferCubit>(() =>
        _i67.DetailsofofferCubit(gh<_i37.BaseRepositoryDetailsofOffer>()));
    gh.factory<_i68.AddtocartCubit>(
        () => _i68.AddtocartCubit(gh<_i63.BaseRepositoryAddtoCart>()));
    gh.factory<_i69.CreateaccountCubit>(
        () => _i69.CreateaccountCubit(gh<_i23.BaseReposotryCreateAccount>()));
    gh.singleton<_i70.BaseRepositoryGetFavorites>(
        () => _i71.GetFavoritesRepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              getFavoritesWebService: gh<_i26.GetFavoritesWebService>(),
            ));
    gh.factory<_i72.LoginCubit>(() => _i72.LoginCubit(
          gh<_i41.BaseReposotryLogin>(),
          gh<_i7.SharedPreferencesUtils>(),
        ));
    gh.factory<_i73.GetproductsofsubsectionCubit>(() =>
        _i73.GetproductsofsubsectionCubit(
            gh<_i45.BaseRepositoryGetProductsOfSubSection>()));
    gh.singleton<_i74.BaseRepositoryBook>(() => _i75.Bookrepository(
          networkInfo: gh<_i8.NetworkInfo>(),
          bookWebService: gh<_i32.BookWebService>(),
        ));
    gh.factory<_i76.GetalloffersCubit>(
        () => _i76.GetalloffersCubit(gh<_i39.BaseRepositoryGetAllOffers>()));
    gh.factory<_i77.CartitemsCubit>(
        () => _i77.CartitemsCubit(gh<_i49.BaseRepositoryCartItems>()));
    gh.factory<_i78.StationeryCubit>(
        () => _i78.StationeryCubit(gh<_i52.BaseRepositoryStationery>()));
    gh.factory<_i79.DeleteitemfromcartCubit>(() => _i79.DeleteitemfromcartCubit(
        gh<_i33.BaseRepositoryDeleteItemFromCart>()));
    gh.factory<_i80.QuraanCubit>(
        () => _i80.QuraanCubit(gh<_i58.BaseRepositoryQuraan>()));
    gh.factory<_i81.GetfavoritesCubit>(
        () => _i81.GetfavoritesCubit(gh<_i70.BaseRepositoryGetFavorites>()));
    gh.factory<_i82.BookCubit>(
        () => _i82.BookCubit(gh<_i74.BaseRepositoryBook>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i83.ThirdPartyInjection {}
