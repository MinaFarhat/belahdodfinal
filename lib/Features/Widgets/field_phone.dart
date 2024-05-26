import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FieldPhone extends StatelessWidget {
  String fieldName;
  TextInputType typeKey;
  bool pass;
  FieldPhone({
    required this.fieldName,
    required this.typeKey,
    required this.pass,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                fieldName,
                style: TextStyle(
                  color: ColorConstant.darkColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextFormField(
                  readOnly: true,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: ColorConstant.mainColor,
                  cursorHeight: 22,
                  keyboardType: typeKey,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: "    +963",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: ColorConstant.darkColor,
                      fontWeight: FontWeight.bold,
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                  ),
                  // style: TextStyle(
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  //   color: Const.mainColor,
                  // ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.06,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: ColorConstant.mainColor,
                  cursorHeight: 22,
                  keyboardType: typeKey,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 2,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.mainColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
