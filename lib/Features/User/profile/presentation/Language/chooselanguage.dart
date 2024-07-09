import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  int chosen = 1;
  int newchosen = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        appBar: SimpleTopBar(
          name: "اللغة",
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
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 16),
            child: Column(
              children: [
                InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    setState(() {
                      chosen = 1;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      chosen == 1
                          ? PhosphorIcon(
                              PhosphorIcons.check(PhosphorIconsStyle.bold),
                              size: 18,
                              color: ColorConstant.mainColor,
                            )
                          : Container(),
                      Text(
                        "اللغة العربية",
                        style: TextStyle(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Divider(
                  color: Colors.grey.shade500,
                  thickness: 1.5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    setState(() {
                      chosen = 2;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      chosen == 2
                          ? PhosphorIcon(
                              PhosphorIcons.check(PhosphorIconsStyle.bold),
                              size: 18,
                              color: ColorConstant.mainColor,
                            )
                          : Container(),
                      Text(
                        "English",
                        style: TextStyle(
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Divider(
                  color: Colors.grey.shade500,
                  thickness: 1.5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                chosen != newchosen
                    ? InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.055,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: ColorConstant.mainColor,
                          ),
                          child: const Center(
                            child: Text(
                              "حفظ التغيرات",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
