import 'package:belahododfinal/Features/User/search/presentation/popularitem.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class SearchSection extends StatelessWidget {
  String nameOfSection;
  SearchSection({required this.nameOfSection, super.key});
  List<Map<String, dynamic>> popular = [
    {
      'image': "assets/images/book1.png",
    },
    {
      'image': "assets/images/book1.png",
    },
    {
      'image': "assets/images/book1.png",
    },
    {
      'image': "assets/images/book1.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
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
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.24,
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: popular.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: PopularItem(
                  image: popular[i]['image'],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
