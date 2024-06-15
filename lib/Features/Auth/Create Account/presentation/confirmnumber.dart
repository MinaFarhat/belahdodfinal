import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/choosephoto.dart';
import 'package:belahododfinal/Features/Auth/waitingscreen.dart';
import 'package:belahododfinal/Features/Widgets/field_pin.dart';
import 'package:flutter/material.dart';

import '../../../../Core/constant/colors_constant.dart';

class ConfirmNumber extends StatelessWidget {
  const ConfirmNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/confirmNumber.png"),
                  fit: BoxFit.cover,
                )),
              ),
              Text(
                "رمز التحقق",
                style: TextStyle(
                  fontSize: 22,
                  color: ColorConstant.darkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Text(
                  "لقد تم إرسال رمز تحقق برسالة الى الرقم المُدخل الرجاء إدخال الرمز لمتابعة إنشاء الحساب",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstant.hintTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              const FieldPins(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const WaitingScreen(
                          screen: ChoosePhoto(),
                          text: "...جارٍ التحقق",
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorConstant.mainColor,
                  ),
                  child: const Center(
                    child: Text(
                      "تحقق",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "إعادة إرسال الرمز مرة أخرى",
                  style: TextStyle(
                    fontSize: 17,
                    color: ColorConstant.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
