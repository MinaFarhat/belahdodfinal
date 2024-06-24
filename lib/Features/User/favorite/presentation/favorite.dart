import 'package:belahododfinal/Features/User/favorite/presentation/Favorites%20Libraries/favoritelibraries.dart';
import 'package:belahododfinal/Features/User/favorite/presentation/Favorites%20Products/favoriteproducts.dart';
import 'package:belahododfinal/Features/User/favorite/presentation/Favorite%20Search/favoritesearch.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  bool action = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          leading: InkWell(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const FavoriteSearch();
                }),
              );
            },
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
              action == true
                  ? const FavoriteProducts()
                  : const FavoritesLibraries(),
            ],
          ),
        ),
      ),
    );
  }
}
