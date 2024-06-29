import 'package:belahododfinal/Features/Visitor/Search%20visitor/Popular%20Products/popularitemvisitor.dart';
import 'package:flutter/material.dart';

class PopularProductsVisitor extends StatelessWidget {
  PopularProductsVisitor({
    super.key,
  });

  final List<Map<String, dynamic>> popular = [
    {
      "productId": 1,
      "sectionId": 1,
      'image': "assets/images/imagecover.png",
    },
    {
      "productId": 2,
      "sectionId": 1,
      'image': "assets/images/imagecover2.png",
    },
    {
      "productId": 3,
      "sectionId": 1,
      'image': "assets/images/imagecover3.png",
    },
    {
      "productId": 4,
      "sectionId": 1,
      'image': "assets/images/imagecover4.png",
    },
    {
      "productId": 5,
      "sectionId": 1,
      'image': "assets/images/imagecover5.png",
    },
    {
      "productId": 6,
      "sectionId": 1,
      'image': "assets/images/imagecover2.png",
    },
    {
      "productId": 7,
      "sectionId": 1,
      'image': "assets/images/imagecover4.png",
    },
    {
      "productId": 8,
      "sectionId": 1,
      'image': "assets/images/imagecover5.png",
    },
    {
      "productId": 9,
      "sectionId": 1,
      'image': "assets/images/imagecover.png",
    },
    {
      "productId": 10,
      "sectionId": 1,
      'image': "assets/images/imagecover3.png",
    },
    {
      "productId": 11,
      "sectionId": 1,
      'image': "assets/images/imagecover5.png",
    },
    {
      "productId": 12,
      "sectionId": 1,
      'image': "assets/images/imagecover2.png",
    },
    {
      "productId": 13,
      "sectionId": 1,
      'image': "assets/images/imagecover4.png",
    },
    {
      "productId": 14,
      "sectionId": 1,
      'image': "assets/images/imagecover.png",
    },
    {
      "productId": 15,
      "sectionId": 1,
      'image': "assets/images/imagecover2.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      width: double.infinity,
      child: ListView.builder(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.15),
        itemCount: popular.length ~/ 5,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: PopularItemVisitor(
              image1: popular[index * 5],
              image2: popular[index * 5 + 1],
              image3: popular[index * 5 + 2],
              image4: popular[index * 5 + 3],
              image5: popular[index * 5 + 4],
              listSize: popular.length,
              isEven: index % 2 == 0,
            ),
          );
        },
      ),
    );
  }
}
