import 'package:flutter/material.dart';

import 'favlibrary.dart';

class FavoritesLibraries extends StatefulWidget {
  const FavoritesLibraries({super.key});

  @override
  State<FavoritesLibraries> createState() => _FavoritesLibrariesState();
}

class _FavoritesLibrariesState extends State<FavoritesLibraries> {
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
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.9,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: favoriteLibrary.length,
          itemBuilder: ((context, index) {
            return FavLibrary(
              image: favoriteLibrary[index]['image'],
              title: favoriteLibrary[index]['title'],
              location: favoriteLibrary[index]['location'],
            );
          }),
        ),
      ),
    );
  }
}
