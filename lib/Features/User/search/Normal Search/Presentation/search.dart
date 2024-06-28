import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../../../Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  List<String> oldsearch = [
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
  ];

  List<String> resultsofSearching = [
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
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
        appBar: AppBar(
          leadingWidth: 10,
          forceMaterialTransparency: true,
          surfaceTintColor: ColorConstant.mainColor,
          shadowColor: ColorConstant.darkColor,
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey.shade700,
                  width: 1.2,
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {},
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstant.mainColor,
                  child: Icon(
                    PhosphorIcons.qrCode(PhosphorIconsStyle.regular),
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
          title: SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              cursorColor: ColorConstant.mainColor,
              cursorHeight: 25,
              textDirection: TextDirection.rtl,
              textInputAction: TextInputAction.search,
              enableSuggestions: true,
              onTap: () {
                setState(() {
                  isSearching = true;
                });
              },
              onEditingComplete: () {
                setState(() {
                  isSearching = false;
                });
              },
              onChanged: (value) {
                setState(() {
                  value = _searchController.text;
                });
              },
              onTapAlwaysCalled: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 2,
                    color: ColorConstant.darkColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 2,
                    color: ColorConstant.darkColor,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 2,
                    color: ColorConstant.darkColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 2,
                    color: ColorConstant.mainColor,
                  ),
                ),
                hintText: "ابحث",
                hintTextDirection: TextDirection.rtl,
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.darkColor,
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorConstant.mainColor,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            // SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       SearchSection(nameOfSection: "الشائع#"),
            //     ],
            //   ),
            // ),
            isSearching == true
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.black.withOpacity(0.5),
                  )
                : Container(),
            isSearching == true
                ? Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      color: Colors.white,
                    ),
                    child: _searchController.text.isNotEmpty
                        ? Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 14, right: 12, top: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "نتائج البحث",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                child: ListView.builder(
                                  itemCount: resultsofSearching.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      overlayColor: WidgetStateProperty.all(
                                          Colors.transparent),
                                      onTap: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, right: 12),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.035,
                                          child: Text(
                                            resultsofSearching[index],
                                            textDirection: TextDirection.rtl,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        : const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 14, right: 12, top: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "عمليات البحث الأخيرة",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // SizedBox(
                              //   height:
                              //       MediaQuery.of(context).size.height * 0.24,
                              //   child: ListView.builder(
                              //     physics: const NeverScrollableScrollPhysics(),
                              //     shrinkWrap: true,
                              //     itemCount: oldsearch.length,
                              //     itemBuilder: ((context, index) {
                              //       return OldSearch(
                              //         text: oldsearch[index],
                              //         recentSearchId: index + 1,
                              //       );
                              //     }),
                              //   ),
                              // ),
                            ],
                          ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
