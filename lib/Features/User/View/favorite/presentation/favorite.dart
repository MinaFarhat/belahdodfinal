import 'package:belahododfinal/Features/User/View/favorite/presentation/favlibrary.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../Core/constant/colors_constant.dart';
import 'favitem.dart';

// ignore: must_be_immutable
class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  bool action = true;
  List<Map<String, dynamic>> favoritsProducts = [
    {
      "image": "assets/images/game1.png",
      "title": "شطرنج",
      "subtitle": "لعبة تحاكي العباقرة, يمكنك اللعب بها مع صديقك",
      "numberofstars": 5,
      "numberwhorates": 552,
    },
    {
      "image": "assets/images/game1.png",
      "title": "شطرنج",
      "subtitle": "لعبة تحاكي العباقرة, يمكنك اللعب بها مع صديقك",
      "numberofstars": 5,
      "numberwhorates": 552,
    },
    {
      "image": "assets/images/game1.png",
      "title": "شطرنج",
      "subtitle": "لعبة تحاكي العباقرة, يمكنك اللعب بها مع صديقك",
      "numberofstars": 5,
      "numberwhorates": 552,
    },
  ];
  List<Map<String, dynamic>> favoriteLibrary = [
    {
      "image": "assets/images/game1.png",
      "title": "مكتبة العلماء الصغار",
      "location": "دمشق/الحلبوني/شارع المكتبات",
    },
    {
      "image": "assets/images/game1.png",
      "title": "مكتبة العلماء الصغار",
      "location": "دمشق/الحلبوني/شارع المكتبات",
    },
    {
      "image": "assets/images/game1.png",
      "title": "مكتبة العلماء الصغار",
      "location": "دمشق/الحلبوني/شارع المكتبات",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          leading: InkWell(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Icon(
                PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.regular),
                color: ColorConstant.mainColor,
                size: 26,
              ),
            ),
          ),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.black),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 26,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
          name: "القائمة المفضلة",
          isBottom: false,
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        setState(() {
                          action = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: action == false
                              ? ColorConstant.mainColor
                              : Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text(
                            "المكتبات",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        setState(() {
                          action = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: action == true
                              ? ColorConstant.mainColor
                              : Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text(
                            "المنتجات",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: action == true
                        ? favoritsProducts.length
                        : favoriteLibrary.length,
                    itemBuilder: ((context, index) {
                      if (action == true) {
                        return Column(
                          children: [
                            FavItem(
                              image: favoritsProducts[index]['image'],
                              title: favoritsProducts[index]['title'],
                              subtitle: favoritsProducts[index]['subtitle'],
                              numberofstars: favoritsProducts[index]
                                  ['numberofstars'],
                              numberwhorates: favoritsProducts[index]
                                  ['numberwhorates'],
                            ),
                            index == favoritsProducts.length - 1
                                ? SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                  )
                                : Container(),
                          ],
                        );
                      } else {
                        return FavLibrary(
                          image: favoriteLibrary[index]['image'],
                          title: favoriteLibrary[index]['title'],
                          location: favoriteLibrary[index]['location'],
                        );
                      }
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
