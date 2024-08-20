import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/Is%20Client/Is%20Client%20Cubit/is_client_cubit.dart';
import 'package:belahododfinal/Features/User/Info/presentation/inof.dart';
import 'package:belahododfinal/Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart';
import 'package:belahododfinal/Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart';
import 'package:belahododfinal/Features/User/news/Manager/News%20Cubit/news_cubit.dart';
import 'package:belahododfinal/Features/User/news/presentation/Ads/showadnews.dart';
import 'package:belahododfinal/Features/User/news/presentation/Details%20Of%20Offer/detailofoffer.dart';
import 'package:belahododfinal/Features/User/news/presentation/News/newtitle.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/top_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../../Core/constant/colors_constant.dart';
import '../../cart/presentation/cart.dart';
import '../../favorite/presentation/favorite.dart';

// ignore: must_be_immutable
class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  int _currentIndex = 0;

  @override
  void initState() {
    context.read<GetalloffersCubit>().offers();
    context.read<NewsCubit>().getNews();
    context.read<AdsCubit>().getAds();
    context.read<IsClientCubit>().isClient();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        extendBody: true,
        appBar: TopBar(
          ontapFav: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const FavoriteList();
              }),
            ).then((_) {
              context.read<GetalloffersCubit>().offers();
              context.read<NewsCubit>().getNews();
              context.read<AdsCubit>().getAds();
            });
          },
          ontapwishList: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const Cart();
              }),
            ).then((_) {
              context.read<GetalloffersCubit>().offers();
              context.read<NewsCubit>().getNews();
              context.read<AdsCubit>().getAds();
            });
          },
          ontapName: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const Information();
              }),
            ).then((_) {
              context.read<GetalloffersCubit>().offers();
              context.read<NewsCubit>().getNews();
              context.read<AdsCubit>().getAds();
            });
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              BlocConsumer<AdsCubit, AdsState>(
                listener: (context, state) {
                  state.whenOrNull(
                    error: (networkExceptions) {
                      Fluttertoast.showToast(
                        msg: NetworkExceptions.getErrorMessage(
                            networkExceptions),
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                        ),
                      );
                    },
                    initial: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                        ),
                      );
                    },
                    loading: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                        ),
                      );
                    },
                    success: (getadsentity) {
                      return Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Stack(
                            children: [
                              CarouselSlider(
                                options: CarouselOptions(
                                  enableInfiniteScroll: true,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.zoom,
                                  padEnds: true,
                                  initialPage: 0,
                                  height: 200.0,
                                  autoPlay: true,
                                  disableCenter: true,
                                  autoPlayInterval: const Duration(seconds: 4),
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                items: getadsentity.ads.map((ad) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      String imageUrl =
                                          '${EndPoints.imageUrl}${ad.adImage}';
                                      return InkWell(
                                        overlayColor: WidgetStateProperty.all(
                                            Colors.transparent),
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return ShowAdNews(
                                                  image: imageUrl,
                                                );
                                              },
                                            ),
                                          ).then((_) {
                                            context
                                                .read<GetalloffersCubit>()
                                                .offers();
                                            context.read<NewsCubit>().getNews();
                                            context.read<AdsCubit>().getAds();
                                          });
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 6),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl: imageUrl,
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            placeholder: (context, url) =>
                                                Center(
                                              child: CircularProgressIndicator(
                                                color: ColorConstant.mainColor,
                                              ),
                                            ),
                                            errorWidget:
                                                (context, url, error) => Stack(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.white,
                                                    image:
                                                        const DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/logo.png"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.85,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }).toList(),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 0,
                                right: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: getadsentity.ads.map((ad) {
                                    int index = getadsentity.ads.indexOf(ad);
                                    return Container(
                                      width: 10,
                                      height: 10,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _currentIndex == index
                                            ? ColorConstant.mainColor
                                            : Colors.black,
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              BlocConsumer<NewsCubit, NewsState>(
                listener: (context, state) {
                  state.whenOrNull(
                    error: (networkExceptions) {
                      Fluttertoast.showToast(
                        msg: NetworkExceptions.getErrorMessage(
                          networkExceptions,
                        ),
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                        ),
                      );
                    },
                    initial: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                        ),
                      );
                    },
                    loading: () {
                      return Center(
                        child: CircularProgressIndicator(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                        ),
                      );
                    },
                    success: (getnewsentity) {
                      return SizedBox(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: getnewsentity.news.length,
                          itemBuilder: ((context, index) {
                            String imageUrl =
                                '${EndPoints.imageUrl}${getnewsentity.news[index].newsImage}';
                            return NewTitle(
                              newsId: getnewsentity.news[index].newsId,
                              title: getnewsentity.news[index].newsTitle,
                              image: imageUrl,
                              description:
                                  getnewsentity.news[index].newsDescription,
                            );
                          }),
                        ),
                      );
                    },
                  );
                },
              ),
              BlocConsumer<IsClientCubit, IsClientState>(
                listener: (context, state) {
                  state.whenOrNull(
                    error: (networkExceptions) {
                      Fluttertoast.showToast(
                        msg: NetworkExceptions.getErrorMessage(
                          networkExceptions,
                        ),
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.red,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Container();
                    },
                    initial: () {
                      return Container();
                    },
                    loading: () {
                      return Container();
                    },
                    success: (iscliententity) {
                      if (iscliententity.isClient == true) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 12, top: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "العروض",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: SharedPreferencesUtils()
                                                  .getisDark() ==
                                              false
                                          ? Colors.grey.shade900
                                          : Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            BlocConsumer<GetalloffersCubit, GetalloffersState>(
                              listener: (context, state) {
                                state.whenOrNull(
                                  error: (networkExceptions) {
                                    Fluttertoast.showToast(
                                      msg: NetworkExceptions.getErrorMessage(
                                        networkExceptions,
                                      ),
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: Colors.red,
                                    );
                                  },
                                );
                              },
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: SharedPreferencesUtils()
                                                    .getisDark() ==
                                                false
                                            ? ColorConstant.mainColor
                                            : Colors.white,
                                      ),
                                    );
                                  },
                                  initial: () {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: SharedPreferencesUtils()
                                                    .getisDark() ==
                                                false
                                            ? ColorConstant.mainColor
                                            : Colors.white,
                                      ),
                                    );
                                  },
                                  loading: () {
                                    return Center(
                                      child: CircularProgressIndicator(
                                        color: SharedPreferencesUtils()
                                                    .getisDark() ==
                                                false
                                            ? ColorConstant.mainColor
                                            : Colors.white,
                                      ),
                                    );
                                  },
                                  success: (getalloffersentity) {
                                    return SizedBox(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.24,
                                      child: ListView.builder(
                                        padding: const EdgeInsets.all(8),
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount:
                                            getalloffersentity.offers.length,
                                        itemBuilder: (context, index) {
                                          String imageUrl =
                                              '${EndPoints.imageUrl}${getalloffersentity.offers[index].image}';
                                          return InkWell(
                                            overlayColor:
                                                WidgetStateProperty.all(
                                                    Colors.transparent),
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return DetailsOfOffer(
                                                      offerId:
                                                          getalloffersentity
                                                              .offers[index]
                                                              .offerId,
                                                    );
                                                  },
                                                ),
                                              ).then((_) {
                                                context
                                                    .read<GetalloffersCubit>()
                                                    .offers();
                                                context
                                                    .read<NewsCubit>()
                                                    .getNews();
                                                context
                                                    .read<AdsCubit>()
                                                    .getAds();
                                              });
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  color: Colors.white,
                                                ),
                                                child: CachedNetworkImage(
                                                  imageUrl: imageUrl,
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      image: DecorationImage(
                                                        image: imageProvider,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  placeholder: (context, url) =>
                                                      Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      color: ColorConstant
                                                          .mainColor,
                                                    ),
                                                  ),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Stack(
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.4,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          color: Colors
                                                              .transparent,
                                                          image:
                                                              const DecorationImage(
                                                            image: AssetImage(
                                                                "assets/images/logo.png"),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.4,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          color: Colors.black
                                                              .withOpacity(0.3),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    },
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
