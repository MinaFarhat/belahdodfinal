import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/SubSections%20And%20Products%20Visitor/presentation/All%20Products%20Visitor/Presentation/allproductsvisitor.dart';
import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/SubSections%20And%20Products%20Visitor/presentation/SubSections/Presentation/allsubsectionsvisitor.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class SubSectionsAndProductsVisitor extends StatefulWidget {
  SubSectionsAndProductsVisitor({
    required this.nameOfSection,
    required this.sectionId,
    super.key,
  });
  String nameOfSection;
  int sectionId;
  @override
  State<SubSectionsAndProductsVisitor> createState() =>
      _SubSectionsAndProductsVisitorState();
}

class _SubSectionsAndProductsVisitorState
    extends State<SubSectionsAndProductsVisitor> {
  bool action = true;
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
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
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
          name: widget.nameOfSection,
          isBottom: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        setState(() {
                          action = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: action == false
                              ? ColorConstant.mainColor
                              : Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text(
                            "الأقسام الفرعية",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        setState(() {
                          action = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: action == true
                              ? ColorConstant.mainColor
                              : Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(
                          child: Text(
                            "المنتجات",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                action == true
                    ? AllProductsVisitor(
                        sectionId: widget.sectionId,
                      )
                    : AllSubSectionsVisitor(
                        sectionId: widget.sectionId,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
