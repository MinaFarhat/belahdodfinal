import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/View/homepage/HomeScreen/presentation/section.dart';
import 'package:belahododfinal/Features/Widgets/top_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../Details/presentation/details.dart';
import '../../../cart/presentation/cart.dart';
import '../../../favorite/presentation/favorite.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<String> offers = [
    "assets/images/offer1.png",
    "assets/images/offer2.png",
    "assets/images/offer3.png",
  ];
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
                return const Details();
              }),
            );
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Section(nameOfSection: "منشورات دار الحافظ", sectionNumber: 0),
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 16),
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
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlayCurve: Curves.fastOutSlowIn,
                  aspectRatio: 6 / 4,
                  viewportFraction: 0.55,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
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
                          borderRadius: BorderRadius.circular(20),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              Section(nameOfSection: "القرطاسية", sectionNumber: 1),
              Section(
                  nameOfSection: "الألعاب والوسائل التعليمية",
                  sectionNumber: 2),
              Section(nameOfSection: "خدمات دينية", sectionNumber: 3),
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
