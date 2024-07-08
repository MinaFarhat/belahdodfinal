import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/payment_mehods_check_box.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        PhosphorIcons.arrowRight(PhosphorIconsStyle.bold),
                        size: 26,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/pay.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "حدد طريقة الدفع",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const PaymentMethodsCheckBox(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 16),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         "كود الحسم",
              //         style: TextStyle(
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold,
              //           color: ColorConstant.darkColor,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.015,
              // ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width * 0.6,
              //   height: MediaQuery.of(context).size.height * 0.07,
              //   child: TextFormField(
              //     keyboardType: TextInputType.number,
              //     cursorColor: ColorConstant.mainColor,
              //     cursorHeight: 23,
              //     textAlignVertical: TextAlignVertical.top,
              //     cursorRadius: const Radius.circular(50),
              //     style: TextStyle(
              //       fontSize: 16,
              //       fontWeight: FontWeight.bold,
              //       color: ColorConstant.darkColor,
              //     ),
              //     textDirection: TextDirection.ltr,
              //     textAlign: TextAlign.center,
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: ColorConstant.shadowColor,
              //       hintTextDirection: TextDirection.rtl,
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //         borderSide: const BorderSide(
              //           width: 0,
              //           color: Colors.transparent,
              //         ),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //         borderSide: const BorderSide(
              //           width: 0,
              //           color: Colors.transparent,
              //         ),
              //       ),
              //       focusedErrorBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //         borderSide: const BorderSide(
              //           width: 0,
              //           color: Colors.transparent,
              //         ),
              //       ),
              //       disabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //         borderSide: const BorderSide(
              //           width: 0,
              //           color: Colors.transparent,
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //         borderSide: const BorderSide(
              //           width: 0,
              //           color: Colors.transparent,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.035,
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 16),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       SizedBox(
              //         width: MediaQuery.of(context).size.width * 0.75,
              //         child: const Text(
              //           "إذا كان هناك كود حسم قم بإدخاله لتحصل على حسم على منتجاتك عند الشراء",
              //           textDirection: TextDirection.rtl,
              //           maxLines: 2,
              //           textAlign: TextAlign.center,
              //           overflow: TextOverflow.visible,
              //           style: TextStyle(
              //             fontSize: 14,
              //             fontWeight: FontWeight.bold,
              //             color: Color(0xFF898787),
              //           ),
              //         ),
              //       ),
              //       SizedBox(
              //         width: MediaQuery.of(context).size.width * 0.015,
              //       ),
              //       const Text(
              //         ":ملاحظة",
              //         style: TextStyle(
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //           color: Color.fromARGB(255, 216, 12, 12),
              //         ),
              //       ),
              //       SizedBox(
              //         width: MediaQuery.of(context).size.width * 0.015,
              //       ),
              //       const CircleAvatar(
              //         radius: 3,
              //         backgroundColor: Color.fromARGB(255, 216, 12, 12),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
