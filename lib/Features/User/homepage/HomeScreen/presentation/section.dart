import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/presentation/item.dart';
import 'package:flutter/material.dart';

import '../../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class Section extends StatelessWidget {
  final String nameOfSection;
  final int sectionNumber;
  final List<ProductEntity> products;
  final int? productID;
  const Section({
    required this.nameOfSection,
    required this.sectionNumber,
    required this.products,
    required this.productID,
    super.key,
  });

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
            itemCount: products.length,
            itemBuilder: (context, i) {
              String imageUrl = 'http://10.0.2.2:8000${products[i].image}';

              return Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Item(
                  productID: productID!,
                  image: imageUrl,
                  index: sectionNumber == 0
                      ? 0
                      : sectionNumber == 1
                          ? 1
                          : sectionNumber == 2
                              ? 2
                              : sectionNumber == 3
                                  ? 3
                                  : 4,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
