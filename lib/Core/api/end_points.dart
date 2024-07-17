class EndPoints {
  static const String baseUrl = "http://10.0.2.2:8000/api";
  static const String createAccountUrl = "$baseUrl/register";
  static const String loginUrl = "$baseUrl/login";
  static const String addToCartUrl = "$baseUrl/cart/";
  static const String cartItemsUrl = "$baseUrl/cart";
  static const String deleteItemFromCartUrl = "$baseUrl/cart/";
  static const String quantityUpdaeUrl = "$baseUrl/cart/";
  static const String productDetailsUrl = "$baseUrl/products/";
  static const String getFavotitesUrl = "$baseUrl/favorite-products";
  static const String addToFavoriteUrl = "$baseUrl/favorite-products/";
  static const String getSectionsAndProductsUrl = "$baseUrl/section-product";
  static const String getProductsMainSectionUrl = "$baseUrl/section-products/";
  static const String getSubSectionsUrl = "$baseUrl/section_subsections/";
  static const String getProductsOfSubSectionUrl =
      "$baseUrl/products/by-subsection/";
  static const String getAdsUrl = "$baseUrl/ad/index";
  static const String getDetailsOfOfferUrl = "$baseUrl/offer/mobile/";
  static const String getAllOffersUrl = "$baseUrl/offer/index";
  static const String getAllNewsUrl = "$baseUrl/news/index";
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
}
