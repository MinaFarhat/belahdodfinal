import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_base.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsBase extends StatelessWidget {
  DetailsBase({super.key});
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
            TopPartBase(
              photos: images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            BottomPartBase(
              title: "الطائر الأزرق",
              subTitle: "قصة خيالية تحكي عن رحلة الطائر الأزرق في التعلم",
              price: 99,
              section: "قسم الأطفال",
              numberwhorates: 500,
              numberwhofavorite: 500,
              locations: locations,
            ),
          ],
        ),
      ),
    );
  }
}
