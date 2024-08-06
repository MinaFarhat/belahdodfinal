class EndPoints {
  static const String baseUrl = "http://10.0.2.2:8000/api";
  static const String createAccountUrl = "$baseUrl/register";
  static const String loginUrl = "$baseUrl/login";
  static const String addToCartUrl = "$baseUrl/cart/";
  static const String cartItemsUrl = "$baseUrl/cart";
  static const String deleteItemFromCartUrl = "$baseUrl/cart/";
  static const String quantityUpdaeUrl = "$baseUrl/cart/";
  static const String productDetailsUrl = "$baseUrl/showUser/";
  static const String getFavotitesUrl = "$baseUrl/favorite-products";
  static const String addToFavoriteUrl = "$baseUrl/favorite-products/";
  static const String getSectionsAndProductsUrl =
      "$baseUrl/section-product-user";
  static const String getProductsMainSectionUrl = "$baseUrl/section-products/";
  static const String getSubSectionsUrl = "$baseUrl/section_subsections/";
  static const String getProductsOfSubSectionUrl =
      "$baseUrl/products/by-subsection/";
  static const String getAdsUrl = "$baseUrl/ad/index";
  static const String getDetailsOfOfferUrl = "$baseUrl/offer/mobile/";
  static const String getAllOffersUrl = "$baseUrl/offer/index";
  static const String getAllNewsUrl = "$baseUrl/news/index";
  static const String getNewDetailsUrl = "$baseUrl/news/";
  static const String getAllNotificationsUrl = "$baseUrl/notification/index";
  static const String getAllOrdersUrl = "$baseUrl/orders";
  static const String getOrderDetailsUrl = "$baseUrl/orders/";
  static const String addressUrl = "$baseUrl/order/address";
  static const String onArrivalPaymentMethodeUrl = "$baseUrl/order/on_arrival";
  static const String transferPaymentMethodeUrl = "$baseUrl/order/transfer";
  static const String searchResultsUrl = "$baseUrl/search?name=";
  static const String getAllCitiesUrl = "$baseUrl/city";
  static const String getSectionAndProductsVisitorUrl =
      "$baseUrl/section-product";
  static const String productDetailsVisitorUrl = "$baseUrl/showVisitor/";
  static const String ratingUrl = "$baseUrl/products/";
  static const String likeUrl = "$baseUrl/products/";
  static const String disLikeUrl = "$baseUrl/products/";
  static const String popularProductsUrl = "$baseUrl/popular-products";
  static const String searchByQRUrl = "$baseUrl/search-by-qr/";
  static const String userInfoUrl = "$baseUrl/get-user-info";
  static const String userInfo2Url = "$baseUrl/get-settings";
  static const String updateUserInfoUrl = "$baseUrl/update-settings";
  static const String updateProfilePicture = "$baseUrl/profile-picture";
  static const String deleteAccountUrl = "$baseUrl/user";
  static const String getVouchersUrl = "$baseUrl/coupon/index";
  static const String createVoucherUrl = "$baseUrl/coupon/create";
  static const String sendOfferUrl = "$baseUrl/offer/checkout/";
  static const String checkBalance = "$baseUrl/check-balance";
}
