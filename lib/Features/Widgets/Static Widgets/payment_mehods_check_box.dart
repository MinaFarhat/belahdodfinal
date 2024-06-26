// ignore_for_file: avoid_print

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PaymentMethodsCheckBox extends StatefulWidget {
  const PaymentMethodsCheckBox({super.key});

  @override
  State<PaymentMethodsCheckBox> createState() => _PaymentMethodsCheckBoxState();
}

class _PaymentMethodsCheckBoxState extends State<PaymentMethodsCheckBox> {
  int activeButton = -1; // Default value indicating no button is active

  // List of methods to be called for each button
  final List<void Function(BuildContext context)> buttonActions = [
    (context) {
      // Action for button 0
      print('Button 0 clicked');
    },
    (context) {
      // Action for button 1
      // ignore: duplicate_ignore
      // ignore: avoid_print
      print('Button 1 clicked');
    },
    (context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      ":أدخل صورة الوصل الخاص بالحوالة",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFE2E2E2),
                      ),
                      child: Center(
                        child: Icon(
                          PhosphorIcons.filePlus(PhosphorIconsStyle.regular),
                          size: 40,
                          color: ColorConstant.mainColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorConstant.mainColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "إرسال",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Icon(
                            PhosphorIcons.paperPlaneTilt(
                                PhosphorIconsStyle.regular),
                            size: 22,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
      print('Button 2 clicked');
    },
    (context) {
      // Action for button 3
      print('Button 3 clicked');
    },
    (context) {
      // Action for button 4
      print('Button 4 clicked');
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkBoxPay(methodName: "Cash Mobile", buttonIndex: 0),
        checkBoxPay(methodName: "قسائم بلا حدود", buttonIndex: 1),
        checkBoxPay(methodName: "الدفع عن طريق الهرم", buttonIndex: 2),
        checkBoxPay(methodName: "ضد الدفع", buttonIndex: 3),
        checkBoxPay(methodName: "الدفع عند التسليم", buttonIndex: 4),
      ],
    );
  }

  Widget checkBoxPay({
    required String methodName,
    required int buttonIndex,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            methodName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorConstant.darkColor,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                if (activeButton == buttonIndex) {
                  activeButton = -1;
                } else {
                  activeButton = buttonIndex;
                  buttonActions[buttonIndex](context);
                }
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.065,
              height: MediaQuery.of(context).size.height * 0.032,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: ColorConstant.mainColor,
                  width: 2,
                ),
                color: activeButton == buttonIndex
                    ? ColorConstant.mainColor
                    : Colors.white,
              ),
              child: Center(
                child: activeButton == buttonIndex
                    ? Icon(
                        PhosphorIcons.check(PhosphorIconsStyle.bold),
                        size: 20,
                        color: Colors.white,
                      )
                    : Container(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
