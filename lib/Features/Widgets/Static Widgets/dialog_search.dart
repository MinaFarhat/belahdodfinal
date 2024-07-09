import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SearchDialog extends StatefulWidget {
  const SearchDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchDialogState createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  int? selectedDay;
  String? selectedMonth;
  int? selectedYear;

  final List<int> days = List<int>.generate(31, (i) => i + 1);
  final List<String> months = [
    'كانون الثاني',
    'شباط',
    'آذار',
    'نيسان',
    'أيار',
    'حزيران',
    'تموز',
    'آب',
    'أيلول',
    'تشرين الأول',
    'تشرين الثاني',
    'كانون الأول'
  ];
  final List<int> years = List<int>.generate(100, (i) => 2024 - i);

  @override
  Widget build(BuildContext context) {
    String currentMonth = months[DateTime.now().month - 1];

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: SharedPreferencesUtils().getisDark() == false
              ? Colors.white
              : Colors.grey.shade900,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              ":أدخل التاريخ",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.black
                    : Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.012,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    value: selectedDay,
                    hint: Text(
                      DateTime.now().day.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onChanged: (int? newValue) {
                      setState(
                        () {
                          selectedDay = newValue;
                        },
                      );
                    },
                    items: days.map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            value.toString(),
                            style: TextStyle(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    iconEnabledColor:
                        SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                    style: const TextStyle(color: Colors.black),
                    dropdownColor: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(18),
                    menuMaxHeight: 170,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedMonth,
                    hint: Text(
                      currentMonth,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onChanged: (String? newValue) {
                      setState(
                        () {
                          selectedMonth = newValue;
                        },
                      );
                    },
                    items: months.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            value,
                            style: TextStyle(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    iconEnabledColor:
                        SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                    style: const TextStyle(color: Colors.black),
                    dropdownColor: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(18),
                    menuMaxHeight: 170,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.08,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                    value: selectedYear,
                    hint: Text(
                      DateTime.now().year.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onChanged: (int? newValue) {
                      setState(
                        () {
                          selectedYear = newValue;
                        },
                      );
                    },
                    items: years.map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            value.toString(),
                            style: TextStyle(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                    iconEnabledColor:
                        SharedPreferencesUtils().getisDark() == false
                            ? Colors.black
                            : Colors.white,
                    style: const TextStyle(color: Colors.black),
                    dropdownColor: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(18),
                    menuMaxHeight: 170,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorConstant.mainColor,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "بحث",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.008,
                      ),
                      Icon(
                        PhosphorIcons.magnifyingGlass(
                          PhosphorIconsStyle.regular,
                        ),
                        size: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
