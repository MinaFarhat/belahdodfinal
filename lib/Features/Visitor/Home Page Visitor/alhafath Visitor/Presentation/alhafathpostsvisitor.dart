import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/alhafath%20Visitor/Presentation/sectionalhafthvisitor.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AlhafathPostsVisitor extends StatelessWidget {
  const AlhafathPostsVisitor({super.key});

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
              SectionAlhafathVisitor(nameOfSection: "كتب الأطفال", sectionNumber: 0),
              SectionAlhafathVisitor(nameOfSection: "كتب الروايات", sectionNumber: 1),
              SectionAlhafathVisitor(nameOfSection: "كتب دينية", sectionNumber: 2),
            ],
          ),
        ),
      ),
    );
 }
}