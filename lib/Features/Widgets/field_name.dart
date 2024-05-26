import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FieldName extends StatelessWidget {
  String fieldName;
  TextInputType typeKey;
  bool pass;
  FieldName({
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
                height: MediaQuery.of(context).size.height * 0.065,
                width: MediaQuery.of(context).size.width * 0.85,
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
                    prefix: pass == true
                        ? GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.visibility_rounded,
                              color: ColorConstant.mainColor,
                              size: 24,
                            ),
                          )
                        : null,
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
                  // obscureText: pass == true ? true : false,
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
