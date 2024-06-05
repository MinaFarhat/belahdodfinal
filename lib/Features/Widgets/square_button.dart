import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SquareButton extends StatelessWidget {
  String text;
  IconData icon;
  VoidCallback onTap;
  SquareButton({
    required this.text,
    required this.onTap,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.068,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: ColorConstant.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            Icon(
              icon,
              size: 26,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
