import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/Presentation/itemvisitor.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SectionVisitor extends StatelessWidget {
  String nameOfSection;
  int sectionNumber;
  SectionVisitor(
      {required this.nameOfSection, required this.sectionNumber, super.key});
  List<Map<String, dynamic>> alhafath = [
    {
      "image": "assets/images/book1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/book2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/book3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/book4.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> stationery = [
    {
      "image": "assets/images/tool1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/tool4.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> kidsGames = [
    {
      "image": "assets/images/game1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/game4.png",
      "isFavorite": false,
    },
  ];
  List<Map<String, dynamic>> religious = [
    {
      "image": "assets/images/religious1.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/religious2.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/religious3.png",
      "isFavorite": false,
    },
    {
      "image": "assets/images/religious4.png",
      "isFavorite": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12, top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                nameOfSection,
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
            itemCount: sectionNumber == 0
                ? alhafath.length
                : sectionNumber == 1
                    ? stationery.length
                    : sectionNumber == 2
                        ? kidsGames.length
                        : religious.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ItemVisitor(
                  image: sectionNumber == 0
                      ? alhafath[i]["image"]
                      : sectionNumber == 1
                          ? stationery[i]["image"]
                          : sectionNumber == 2
                              ? kidsGames[i]["image"]
                              : religious[i]["image"],
                  index: sectionNumber == 0
                      ? 0
                      : sectionNumber == 1
                          ? 1
                          : sectionNumber == 2
                              ? 2
                              : 3,
                  isFavorite: sectionNumber == 0
                      ? alhafath[i]["isFavorite"]
                      : sectionNumber == 1
                          ? stationery[i]["isFavorite"]
                          : sectionNumber == 2
                              ? kidsGames[i]["isFavorite"]
                              : religious[i]["isFavorite"],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
