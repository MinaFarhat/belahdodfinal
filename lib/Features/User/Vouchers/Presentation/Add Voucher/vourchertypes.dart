import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';

class VourcherTypes extends StatelessWidget {
  final int number;
  final String selectedVoucher;
  final Function(String) onSelected;

  const VourcherTypes({
    required this.number,
    required this.selectedVoucher,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isClicked = number.toString() == selectedVoucher;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "قسيمة $number ألف ل.س",
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
            if (value != null && value) {
              onSelected(number.toString());
            }
          },
        ),
      ],
    );
  }
}
