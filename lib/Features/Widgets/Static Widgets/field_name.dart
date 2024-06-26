import 'package:belahododfinal/Core/constant/colors_constant.dart';
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
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextFormField(
                  controller: widget.controller,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: ColorConstant.mainColor,
                  cursorHeight: 22,
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
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
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
