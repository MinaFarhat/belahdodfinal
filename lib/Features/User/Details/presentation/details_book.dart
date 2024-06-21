import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_book.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsBook extends StatelessWidget {
  DetailsBook({super.key});
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
            TopPartBook(
              photos: images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            BottomPartBook(
              title: "الطائر الأزرق",
              subTitle: "قصة خيالية تحكي عن رحلة الطائر الأزرق في التعلم",
              price: 99,
              auther: "Loren Ipsum",
              translater: "Ahmad",
              measurements: "500*1000",
              numberofpages: "100",
              printtype: "أبيض & أسود",
              section: "قسم الأطفال",
              targetage: "12,13",
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
