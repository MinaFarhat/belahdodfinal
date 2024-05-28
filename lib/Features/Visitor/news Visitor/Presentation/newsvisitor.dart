import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/news%20Visitor/Presentation/Details%20Of%20Offer%20Visitor/detailsofoffervisitor.dart';
import 'package:belahododfinal/Features/Visitor/news%20Visitor/Presentation/newvideovisitor.dart';
import 'package:belahododfinal/Features/Widgets/top_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsPageVisitor extends StatelessWidget {
   NewsPageVisitor({super.key});
 List<String> advertisements = [
    "assets/images/offer1.png",
    "assets/images/offer2.png",
    "assets/images/offer3.png",
  ];
  List<Map<String, dynamic>> news = [
    {
      "image": "assets/images/new.png",
      "title": "انطلاق المعرض السنوي في الدوحة"
    },
    {
      "image": "assets/images/new.png",
      "title": "انطلاق المعرض السنوي في الدوحة"
    },
    {
      "image": "assets/images/new.png",
      "title": "انطلاق المعرض السنوي في الدوحة"
    },
  ];
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
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) {
            //     return const FavoriteList();
            //   }),
            // );
          },
          ontapwishList: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) {
            //     return Cart();
            //   }),
            // );
          },
          ontapName: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) {
            //     return const Details();
            //   }),
            // );
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.016,
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enableInfiniteScroll: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                      padEnds: true,
                      initialPage: 1,
                      height: 200.0,
                      autoPlay: true,
                      disableCenter: true,
                      autoPlayInterval: const Duration(
                        seconds: 4,
                      ),
                    ),
                    items: advertisements.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      i,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: MediaQuery.of(context).size.height * 0.2,
                                left: MediaQuery.of(context).size.width * 0.27,
                                child: Center(
                                  child: SizedBox(
                                    width: 80,
                                    height: 20,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: advertisements.length,
                                        itemBuilder: (context, index) {
                                          return Center(
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 3,
                                              ),
                                              width: 12,
                                              height: 12,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: advertisements
                                                            .indexOf(i) ==
                                                        index
                                                    ? ColorConstant.mainColor
                                                    : ColorConstant.darkColor,
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              SizedBox(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: news.length,
                  itemBuilder: ((context, index) {
                    return NewVideoVisitor(
                      image: news[index]['image'],
                      title: news[index]['title'],
                    );
                  }),
                ),
              ),
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
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.24,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: offers.length,
                  itemBuilder: (context, i) {
                    return InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailsOfOfferVisitor();
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(offers[i]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
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