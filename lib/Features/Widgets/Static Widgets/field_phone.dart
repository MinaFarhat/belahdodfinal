import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FieldPhone extends StatelessWidget {
  String fieldName;
  TextInputType typeKey;
  bool pass;
  String? Function(String?)? validate;
  TextEditingController phonenumbercontroller;
  FieldPhone({
    required this.fieldName,
    required this.typeKey,
    required this.pass,
    required this.validate,
    required this.phonenumbercontroller,
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
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
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
                  cursorColor: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                  cursorHeight: 20,
                  cursorRadius: const Radius.circular(50),
                  keyboardType: typeKey,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    hintText: "    +963",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade900
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        width: 1.5,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        width: 1.5,
                      ),
                    ),
                  ),
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
                  controller: phonenumbercontroller,
                  validator: validate,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                  cursorHeight: 20,
                  cursorRadius: const Radius.circular(50),
                  keyboardType: typeKey,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        width: 1.5,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
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
                    fontWeight: FontWeight.bold,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.grey.shade900
                        : Colors.white,
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
