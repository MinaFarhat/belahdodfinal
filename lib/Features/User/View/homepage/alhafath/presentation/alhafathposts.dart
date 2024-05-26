import 'package:belahododfinal/Features/User/View/homepage/alhafath/presentation/sectionalhafath.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class AlhafathPosts extends StatelessWidget {
  const AlhafathPosts({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleTopBar(
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.bold),
                  size: 26,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
          name: "منشورات دار الحافظ",
          isBottom: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SectionAlhafath(nameOfSection: "كتب الأطفال", sectionNumber: 0),
              SectionAlhafath(nameOfSection: "كتب الروايات", sectionNumber: 1),
              SectionAlhafath(nameOfSection: "كتب دينية", sectionNumber: 2),
            ],
          ),
        ),
      ),
    );
  }
}
