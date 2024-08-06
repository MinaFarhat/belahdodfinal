import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';

class VoucherData extends StatelessWidget {
  const VoucherData({
    required this.size,
    required this.available,
    required this.consumer,
    required this.sender,
    required this.receiver,
    required this.date,
    super.key,
  });
  final String size;
  final String available;
  final String consumer;
  final String sender;
  final String receiver;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade800,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade800.withOpacity(0.4),
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade800.withOpacity(0.4),
                    offset: const Offset(0, -0.2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ":المرسل",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.37,
                      child: Text(
                        sender,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.012,
                    ),
                    Text(
                      ":المستقبل",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.37,
                      child: Text(
                        receiver,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.012,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade800,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade800.withOpacity(0.4),
                    offset: const Offset(0, 1),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.grey.shade800.withOpacity(0.4),
                    offset: const Offset(0, -0.2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ":تاريخ الإنشاء",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.004,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.37,
                      child: Text(
                        date,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : ColorConstant.shadowColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: SharedPreferencesUtils().getisDark() == false
                ? Colors.white
                : Colors.grey.shade800,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800.withOpacity(0.4),
                offset: const Offset(0, 1),
                blurRadius: 2,
              ),
              BoxShadow(
                color: Colors.grey.shade800.withOpacity(0.4),
                offset: const Offset(0, -0.2),
                blurRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  ":حجم القسيمة",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.black
                        : Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "ل.س",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : ColorConstant.shadowColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    size.startsWith("0")
                        ? Container()
                        : Text(
                            "ألف",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
                            ),
                          ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    Text(
                      size,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : ColorConstant.shadowColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.017,
                ),
                Text(
                  ":الرصيد المتوفر",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.black
                        : Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "ل.س",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : ColorConstant.shadowColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    available.startsWith("0")
                        ? Container()
                        : Text(
                            "ألف",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
                            ),
                          ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    Text(
                      available,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : ColorConstant.shadowColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.017,
                ),
                Text(
                  ":الرصيد المستهلك",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.black
                        : Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "ل.س",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : ColorConstant.shadowColor,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    consumer.startsWith("0")
                        ? Container()
                        : Text(
                            "ألف",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
                            ),
                          ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.004,
                    ),
                    Text(
                      consumer,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.mainColor
                            : ColorConstant.shadowColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
