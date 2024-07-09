import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class FieldName extends StatefulWidget {
  String fieldName;
  TextInputType typeKey;
  bool pass;
  String? Function(String?)? validate;
  TextEditingController controller;
  FieldName({
    required this.fieldName,
    required this.typeKey,
    required this.pass,
    required this.validate,
    required this.controller,
    super.key,
  });

  @override
  State<FieldName> createState() => _FieldNameState();
}

class _FieldNameState extends State<FieldName> {
  bool visibility = true;

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
                widget.fieldName,
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
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextFormField(
                  controller: widget.controller,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                  cursorHeight: 20,
                  cursorRadius: const Radius.circular(50),
                  keyboardType: widget.typeKey,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  validator: widget.validate,
                  obscureText: widget.pass == true
                      ? visibility == false
                          ? false
                          : true
                      : false,
                  decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    prefix: widget.pass == true
                        ? visibility == false
                            ? InkWell(
                                overlayColor:
                                    WidgetStateProperty.all(Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    visibility = true;
                                  });
                                },
                                child: Icon(
                                  PhosphorIcons.eye(PhosphorIconsStyle.regular),
                                  color: ColorConstant.mainColor,
                                  size: 24,
                                ),
                              )
                            : InkWell(
                                overlayColor:
                                    WidgetStateProperty.all(Colors.transparent),
                                onTap: () {
                                  setState(() {
                                    visibility = false;
                                  });
                                },
                                child: Icon(
                                  PhosphorIcons.eyeSlash(
                                      PhosphorIconsStyle.regular),
                                  color: ColorConstant.mainColor,
                                  size: 24,
                                ),
                              )
                        : null,
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
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.002,
        ),
      ],
    );
  }
}
