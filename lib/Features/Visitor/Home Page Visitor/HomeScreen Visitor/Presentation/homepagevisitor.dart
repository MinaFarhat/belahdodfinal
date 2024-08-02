import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Cart%20Visitor/Presentation/cartvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Favorite%20Visitor/Presentation/favoritevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/Presentation/sectionvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/Presentation/showadhomepagevisitor.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/cubit/section_visitor_cubit.dart';
import 'package:belahododfinal/Features/Visitor/InfoVisitor/presentation/inofvisitor.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/top_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class HomePageVisitor extends StatefulWidget {
  const HomePageVisitor({super.key});

  @override
  State<HomePageVisitor> createState() => _HomePageVisitorState();
}

class _HomePageVisitorState extends State<HomePageVisitor> {
  @override
  void initState() {
    context.read<SectionVisitorCubit>().sectionsVisitor();
    context.read<AdsCubit>().getAds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: TopBar(
          ontapFav: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const FavoriteVisitor();
              }),
            );
          },
          ontapwishList: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const CartVisitor();
              }),
            );
          },
          ontapName: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const InformationVisitor();
              }),
            );
          },
        ),
        body: BlocConsumer<SectionVisitorCubit, SectionVisitorState>(
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
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              initial: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              success: (sectionvisitorentity) {
                return ListView.builder(
                  itemCount: sectionvisitorentity.sectionsVisitor.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final products =
                        sectionvisitorentity.sectionsVisitor[index].products;

                    final productIDs =
                        products.map((product) => product.id).toList();

                    return Column(
                      children: [
                        SectionVisitor(
                          nameOfSection:
                              sectionvisitorentity.sectionsVisitor[index].name,
                          sectionNumber: index,
                          products: products,
                          productIDs: productIDs,
                          sectionId: sectionvisitorentity
                              .sectionsVisitor[index].sectionId,
                        ),
                        index == 0
                            ? BlocConsumer<AdsCubit, AdsState>(
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
                                          color: ColorConstant.mainColor,
                                        ),
                                      );
                                    },
                                    initial: () {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: ColorConstant.mainColor,
                                        ),
                                      );
                                    },
                                    loading: () {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: ColorConstant.mainColor,
                                        ),
                                      );
                                    },
                                    success: (getadsentity) {
                                      return Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12, top: 16),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "الإعلانات",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color:
                                                        ColorConstant.darkColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.016,
                                          ),
                                          CarouselSlider(
                                            options: CarouselOptions(
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              aspectRatio: 6 / 4,
                                              viewportFraction: 0.55,
                                              enlargeCenterPage: true,
                                              enableInfiniteScroll: true,
                                              enlargeStrategy:
                                                  CenterPageEnlargeStrategy
                                                      .zoom,
                                              padEnds: true,
                                              initialPage: 1,
                                              height: 280.0,
                                              autoPlay: true,
                                              disableCenter: true,
                                              autoPlayInterval:
                                                  const Duration(seconds: 4),
                                            ),
                                            items: getadsentity.ads.map((ad) {
                                              String imageUrl =
                                                  'http://10.0.2.2:8000${ad.adImage}';
                                              return Builder(
                                                builder:
                                                    (BuildContext context) {
                                                  return InkWell(
                                                    overlayColor:
                                                        WidgetStateProperty.all(
                                                            Colors.transparent),
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .push(
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return ShowAdHomePageVisitor(
                                                              image: imageUrl,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Colors.transparent,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        image: DecorationImage(
                                                          image:
                                                              CachedNetworkImageProvider(
                                                                  imageUrl),
                                                          fit: BoxFit.cover,
                                                          onError: (exception,
                                                              stackTrace) {
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
                                                                        BorderRadius.circular(
                                                                            25),
                                                                    color: Colors
                                                                        .white,
                                                                    image:
                                                                        const DecorationImage(
                                                                      image: AssetImage(
                                                                          "assets/images/logo.png"),
                                                                      fit: BoxFit
                                                                          .cover,
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
                                                                        BorderRadius.circular(
                                                                            25),
                                                                    color: Colors
                                                                        .black
                                                                        .withOpacity(
                                                                            0.3),
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            }).toList(),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              )
                            : Container(),
                        index == sectionvisitorentity.sectionsVisitor.length - 1
                            ? SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                              )
                            : Container(),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
