import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_game.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsGame extends StatelessWidget {
  DetailsGame({super.key});
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
            TopPartGame(
              photos: images,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            BottomPartGame(
              title: "شطرنج",
              subTitle: "لعبة تحاكي العباقرة, يمكنك اللعب بها مع صديقك",
              age: "صالحة للأطفال ذو العمر 14 او أكبر",
              price: 100,
              publisher: "دار الحافظ",
              gameObjectives:
                  "يستطيع الطفل عند إنهاء هذه اللعبة لعب الشطرنج بشكل صحيح",
              materials: "الخشب, البلاستيك, السيلكون",
              section: "الألعاب والوسائل التعليمية",
              numofplayers: 5,
              amountwhofavorite: 500,
              amountwhorates: 500,
              locations: locations,
            ),
          ],
        ),
      ),
    );
  }
}
