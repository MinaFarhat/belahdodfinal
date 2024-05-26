import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeleteDialog extends StatelessWidget {
  String title;
  String subTitle;
  String button1;
  String button2;
  VoidCallback ontapButton1;
  VoidCallback ontapButton2;
  DeleteDialog({
    required this.title,
    required this.subTitle,
    required this.button1,
    required this.button2,
    required this.ontapButton1,
    required this.ontapButton2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 8, right: 8),
              child: Text(
                subTitle,
                textDirection: TextDirection.rtl,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: ontapButton1,
                    child: Center(
                      child: Text(
                        button1,
                        style: TextStyle(
                          fontSize: 18,
                          color: ColorConstant.darkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  GestureDetector(
                    onTap: ontapButton2,
                    child: Center(
                      child: Text(
                        button2,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red.shade500,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
