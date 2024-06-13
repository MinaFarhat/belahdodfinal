import 'package:flutter/material.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';

// ignore: must_be_immutable
class FieldLocation extends StatelessWidget {
  String? Function(String?)? validatefield;
  String? Function(String?)? validatedropdownbutton;
  TextEditingController controller;
  FieldLocation({
    super.key,
    required this.controller,
    required this.validatefield,
    required this.validatedropdownbutton,
  });

  static String? value;
  static List<String> cities = [
    "دمشق",
    "حلب",
    "حمص",
    "ريف دمشق",
    "إدلب",
    "حماه",
    "اللاذقية",
    "طرطوس",
    "السويداء",
    "درعا",
    "القنيطرة",
    "دير الزور",
    "الحسكة",
    "الرقة",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "العنوان",
                style: TextStyle(
                  color: ColorConstant.darkColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1.5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: TextFormField(
                  controller: controller,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: ColorConstant.mainColor,
                  cursorHeight: 22,
                  keyboardType: TextInputType.streetAddress,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    hintText: "المنطقة",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: ColorConstant.hintTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstant.hintTextColor,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstant.hintTextColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.mainColor,
                  ),
                  validator: validatefield,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.3,
              child: DropdownButtonFormField(
                menuMaxHeight: 300,
                hint: Text(
                  "المحافظة",
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorConstant.hintTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                iconSize: 30,
                isExpanded: true,
                alignment: Alignment.center,
                value: value,
                items: cities.map((String city) {
                  return DropdownMenuItem(
                    enabled: true,
                    value: city,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          city,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: ColorConstant.mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (val) {
                  value = val;
                },
                validator: validatedropdownbutton,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
