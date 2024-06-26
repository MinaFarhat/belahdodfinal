import 'package:belahododfinal/Features/User/search/presentation/searchsection.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../Core/constant/colors_constant.dart';
import 'oldsearch.dart';

// ignore: must_be_immutable
class Search extends StatelessWidget {
  Search({super.key});
  bool isContent = false;
  List<String> oldsearch = [
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: SimpleTopBar(
          leading: Container(),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {},
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: ColorConstant.mainColor,
                  child: Icon(
                    PhosphorIcons.barcode(PhosphorIconsStyle.regular),
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          isBottom: true,
          name: null,
        ),
        body: isContent == false
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 14, right: 12, top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            onTap: () {},
                            child: Text(
                              "عرض الكل",
                              style: TextStyle(
                                color: ColorConstant.mainColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "عمليات البحث الأخيرة",
                            style: TextStyle(
                              color: ColorConstant.darkColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.24,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: oldsearch.length,
                        itemBuilder: ((context, index) {
                          return OldSearch(text: oldsearch[index]);
                        }),
                      ),
                    ),
                    SearchSection(nameOfSection: "الشائع#"),
                  ],
                ),
              )
            : Container(),
      ),
    );
  }
}
