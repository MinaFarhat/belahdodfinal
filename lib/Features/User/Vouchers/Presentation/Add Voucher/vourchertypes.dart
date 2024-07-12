import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';

class VourcherTypes extends StatefulWidget {
  const VourcherTypes({required this.text, super.key});
  final String text;

  @override
  State<VourcherTypes> createState() => _VourcherTypesState();
}

class _VourcherTypesState extends State<VourcherTypes> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            color: SharedPreferencesUtils().getisDark() == false
                ? Colors.grey.shade900
                : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Checkbox(
          checkColor: SharedPreferencesUtils().getisDark() == false
              ? Colors.white
              : Colors.grey.shade900,
          activeColor: SharedPreferencesUtils().getisDark() == false
              ? ColorConstant.mainColor
              : ColorConstant.shadowColor,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          value: isClicked,
          onChanged: (value) {
            setState(() {
              isClicked = value!;
            });
          },
        ),
      ],
    );
  }
}
