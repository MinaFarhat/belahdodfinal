import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Points/Presentation/Replace%20the%20Points%20for%20Voucher/voucherdatapoint.dart';
import 'package:belahododfinal/Features/User/Points/Presentation/Replace%20the%20Points%20for%20Voucher/vouchertype.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../../Widgets/Static Widgets/simple_top_bar.dart';

class ReplacePoints extends StatefulWidget {
  const ReplacePoints({super.key});

  @override
  State<ReplacePoints> createState() => _ReplacePointsState();
}

class _ReplacePointsState extends State<ReplacePoints> {
  int i = 0;
  List<Map<String, dynamic>> vouchers = [
    {
      "size": 100,
      "numberofpoints": 1000,
      "color": <Color>[
        const Color(0xFF07C4FF),
        const Color(0xFF60DA15),
        Colors.yellowAccent,
      ],
    },
    {
      "size": 150,
      "numberofpoints": 1500,
      "color": <Color>[
        const Color(0xFFFB12E4),
        const Color(0xFFBE15DA),
        Colors.pink,
      ],
    },
    {
      "size": 200,
      "numberofpoints": 2000,
      "color": <Color>[
        const Color(0xFF4179B9),
        Colors.redAccent.shade400,
        const Color(0xFFDA1515),
      ],
    },
    {
      "size": 250,
      "numberofpoints": 2500,
      "color": <Color>[
        const Color(0xFFDA1955),
        const Color(0xFFFB7A12),
        const Color(0xFFFF0D57),
      ],
    },
    {
      "size": 300,
      "numberofpoints": 3000,
      "color": <Color>[
        const Color(0xFFFFD700),
        const Color(0xFFFFC300),
        const Color(0xFFB8860B),
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == false
            ? Colors.white
            : Colors.grey.shade900,
        appBar: SimpleTopBar(
          name: "أصدقاء بلا حدود",
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
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 26,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                ),
              ),
            ),
          ],
          isBottom: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlayCurve: Curves.fastOutSlowIn,
                  aspectRatio: 6 / 4,
                  viewportFraction: 1,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  padEnds: true,
                  initialPage: i,
                  pageSnapping: true,
                  height: MediaQuery.of(context).size.height * 0.4,
                  disableCenter: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      i = index;
                    });
                  },
                ),
                items: vouchers.map((v) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                VoucherType(
                                  size: vouchers[i]['size'],
                                ),
                              ],
                            ),
                            Positioned(
                              right: 65,
                              bottom: 65,
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.065,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: SharedPreferencesUtils().getisDark() ==
                                          false
                                      ? Colors.white
                                      : Colors.grey.shade900,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 65,
                              bottom: 65,
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.065,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: SharedPreferencesUtils().getisDark() ==
                                          false
                                      ? Colors.white
                                      : Colors.grey.shade900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              VoucherDataPoint(
                size: vouchers[i]["size"],
                pointReplacment: vouchers[i]['numberofpoints'],
                colors: vouchers[i]["color"],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.16,
              ),
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: ColorConstant.mainColor,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      transform: const GradientRotation(30),
                      colors: [
                        ColorConstant.shadowColor,
                        ColorConstant.shadowColor,
                        // Colors.deepPurple.shade700,
                        // Colors.deepPurple.shade700,
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "أستبدال",
                        style: TextStyle(
                          color: Colors.deepPurple.shade700,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Icon(
                        PhosphorIcons.arrowsLeftRight(PhosphorIconsStyle.fill),
                        size: 24,
                        color: Colors.deepPurple.shade700,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
