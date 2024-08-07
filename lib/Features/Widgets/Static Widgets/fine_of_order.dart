import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FineOfOrder extends StatelessWidget {
  String text;
  dynamic paramter;
  bool isQuantity;
  bool isDetail;
  FineOfOrder({
    required this.isDetail,
    required this.isQuantity,
    required this.paramter,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (paramter is int) {
      if (isQuantity) {
        return Padding(
          padding: const EdgeInsets.only(top: 4, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                paramter.toString(),
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? isDetail == true
                          ? Colors.black
                          : ColorConstant.mainColor
                      : isDetail == true
                          ? Colors.white
                          : ColorConstant.shadowColor,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                "$text:",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.grey.shade300,
                ),
              ),
            ],
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(top: 4, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "ل.س",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? isDetail == true
                              ? Colors.black
                              : ColorConstant.mainColor
                          : isDetail == true
                              ? Colors.white
                              : ColorConstant.shadowColor,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    paramter.toString(),
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? isDetail == true
                              ? Colors.black
                              : ColorConstant.mainColor
                          : isDetail == true
                              ? Colors.white
                              : ColorConstant.shadowColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                "$text:",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.grey.shade300,
                ),
              ),
            ],
          ),
        );
      }
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 4, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                paramter.toString(),
                textDirection: TextDirection.rtl,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? isDetail == true
                          ? Colors.black
                          : ColorConstant.mainColor
                      : isDetail == true
                          ? Colors.white
                          : ColorConstant.shadowColor,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "$text:",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.grey.shade900
                    : Colors.grey.shade300,
              ),
            ),
          ],
        ),
      );
    }
  }
}
