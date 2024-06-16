import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/alhafath%20Visitor/Presentation/alhafathitemvisitor.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SectionAlhafathVisitor extends StatelessWidget {
  String nameOfSection;
  int sectionNumber;
  SectionAlhafathVisitor(
      {required this.nameOfSection, required this.sectionNumber, super.key});
  List<Map<String, dynamic>> childbooks = [
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
  List<Map<String, dynamic>> articals = [
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
  List<Map<String, dynamic>> religiousbooks = [
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
                ? childbooks.length
                : sectionNumber == 1
                    ? articals.length
                    : sectionNumber == 2
                        ? religiousbooks.length
                        : null,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: AlhafathItemVisitor(
                  image: sectionNumber == 0
                      ? childbooks[i]["image"]
                      : sectionNumber == 1
                          ? articals[i]["image"]
                          : sectionNumber == 2
                              ? religiousbooks[i]["image"]
                              : null,
                  isFavorite: sectionNumber == 0
                      ? childbooks[i]["isFavorite"]
                      : sectionNumber == 1
                          ? articals[i]["isFavorite"]
                          : sectionNumber == 2
                              ? religiousbooks[i]["isFavorite"]
                              : null,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
