import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Info/presentation/inof.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/cubit/section_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/presentation/section.dart';
import 'package:belahododfinal/Features/Widgets/top_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../cart/presentation/cart.dart';
import '../../../favorite/presentation/favorite.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> offers = [
    "assets/images/offer1.png",
    "assets/images/offer2.png",
    "assets/images/offer3.png",
  ];

//  final SectionEntity sectionEntity;
  List<Map<String, dynamic>> sections = [
    {
      "name": "book",
      "products": [
        {
          "id": 1,
          "image": ["assets/images/book1.png"],
        },
        {
          "id": 2,
          "image": ["assets/images/book2.png"],
        },
        {
          "id": 3,
          "image": ["assets/images/book3.png"],
        },
        {
          "id": 4,
          "image": ["assets/images/book4.png"],
        },
      ],
    },
    {
      "name": "Games",
      "products": [
        {
          "id": 5,
          "image": ["assets/images/tool1.png"],
        },
        {
          "id": 6,
          "image": ["assets/images/tool2.png"],
        },
        {
          "id": 7,
          "image": ["assets/images/tool3.png"],
        },
        {
          "id": 8,
          "image": ["assets/images/tool4.png"],
        },
      ],
    },
    {
      "name": "Stationery",
      "products": [
        {
          "id": 9,
          "image": ["assets/images/game1.png"],
        },
        {
          "id": 10,
          "image": ["assets/images/game2.png"],
        },
        {
          "id": 11,
          "image": ["assets/images/game3.png"],
        },
        {
          "id": 12,
          "image": ["assets/images/game4.png"],
        },
      ],
    },
    {
      "name": "Qurans",
      "products": [
        {
          "id": 13,
          "image": ["assets/images/religious1.png"],
        },
        {
          "id": 14,
          "image": ["assets/images/religious2.png"],
        },
        {
          "id": 15,
          "image": ["assets/images/religious3.png"],
        },
        {
          "id": 16,
          "image": ["assets/images/religious4.png"],
        },
      ],
    },
  ];
  @override
  void initState() {
    context.read<SectionCubit>().sections();
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
                return const FavoriteList();
              }),
            );
          },
          ontapwishList: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return Cart();
              }),
            );
          },
          ontapName: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const Information();
              }),
            );
          },
        ),
        body: BlocConsumer<SectionCubit, SectionState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (networkExceptions) {
                Fluttertoast.showToast(
                  msg: NetworkExceptions.getErrorMessage(
                    networkExceptions,
                  ), // Customize this message based on your error types
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,

                  backgroundColor: Colors.red,
                );
              },
              success: (sectionentity) {
                return ListView.builder(
                  itemCount: sectionentity.sections.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Section(
                          nameOfSection: sectionentity.sections[index].name,
                          sectionNumber: index,
                          products: sectionentity.sections[index].products,
                        ),
                        index == 0
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "العروض",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: ColorConstant.darkColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.016,
                                  ),
                                  CarouselSlider(
                                    options: CarouselOptions(
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      aspectRatio: 6 / 4,
                                      viewportFraction: 0.55,
                                      enlargeCenterPage: true,
                                      enableInfiniteScroll: true,
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.zoom,
                                      padEnds: true,
                                      initialPage: 1,
                                      height: 280.0,
                                      autoPlay: true,
                                      disableCenter: true,
                                      autoPlayInterval: const Duration(
                                        seconds: 4,
                                      ),
                                    ),
                                    items: offers.map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  i,
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                ],
                              )
                            : Container(),
                      ],
                    );
                  },
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
              loading: () {
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
              success: (sectionentity) {
                return ListView.builder(
                  itemCount: sectionentity.sections.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Section(
                          nameOfSection: sectionentity.sections[index].name,
                          sectionNumber: index,
                          products: sectionentity.sections[index].products,
                        ),
                        index == 0
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "العروض",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: ColorConstant.darkColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.016,
                                  ),
                                  CarouselSlider(
                                    options: CarouselOptions(
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      aspectRatio: 6 / 4,
                                      viewportFraction: 0.55,
                                      enlargeCenterPage: true,
                                      enableInfiniteScroll: true,
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.zoom,
                                      padEnds: true,
                                      initialPage: 1,
                                      height: 280.0,
                                      autoPlay: true,
                                      disableCenter: true,
                                      autoPlayInterval: const Duration(
                                        seconds: 4,
                                      ),
                                    ),
                                    items: offers.map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  i,
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                ],
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
