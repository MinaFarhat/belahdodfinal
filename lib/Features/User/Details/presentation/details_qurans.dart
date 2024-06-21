import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bootom_part_quraan.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_quraan.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsQurans extends StatelessWidget {
  DetailsQurans({super.key});
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
            TopPartQuraan(
              photos: images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            BootomPartQuraan(
              title: "الطائر الأزرق",
              subTitle: "قصة خيالية تحكي عن رحلة الطائر الأزرق في التعلم",
              price: 99,
              publisher: "dar alhafeth",
              numberofpages: "100",
              printtype: "أبيض & أسود",
              section: "قسم الخدمات الدينية",
              specifications: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
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
