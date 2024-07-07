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
                  cursorHeight: 20,
                  cursorRadius: const Radius.circular(50),
                  cursorColor: Colors.grey.shade900,
                  keyboardType: TextInputType.streetAddress,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    hintText: "المنطقة",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 1.5,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade900,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ColorConstant.mainColor,
                        width: 1.5,
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
                    fontSize: 16,
                    color: ColorConstant.hintTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                iconSize: 30,
                iconEnabledColor: ColorConstant.mainColor,
                iconDisabledColor: Colors.grey.shade900,
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
                            fontSize: 16,
                            color: Colors.grey.shade900,
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
