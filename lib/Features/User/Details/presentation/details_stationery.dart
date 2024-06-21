import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_stationery.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_stationery.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsStationery extends StatelessWidget {
  DetailsStationery({super.key});
  final List<String> images = [
    "assets/images/book5.png",
    "assets/images/book6.png",
    "assets/images/book7.png",
  ];

  List<String> locations = [
    "دار الحافظ(دمشق)",
    "العلماء الصغار(دمشق)",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            TopPartStationery(
              photos: images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            BottomPartStationery(
              title: "الطائر الأزرق",
              subTitle: "قصة خيالية تحكي عن رحلة الطائر الأزرق في التعلم",
              price: 100,
              gameObjectives: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              publisher: "دار الحافظ",
              useage:
                  "ينصح باستخدامه على الأوراق الجافة ويحفظ بعيدا عن الحرارة.",
              materials: "الخشب, البلاستيك, السيلكون",
              section: "قسم الأطفال",
              amountwhorates: 500,
              amountwhofavorite: 500,
              locations: locations,
            ),
          ],
        ),
      ),
    );
  }
}
