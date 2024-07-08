import 'package:belahododfinal/Features/Auth/Forgate%20Password/presentation/forgetpassword3.dart';
import 'package:belahododfinal/Features/Auth/waitingscreen.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/field_pin.dart';
import 'package:flutter/material.dart';

import '../../../../Core/constant/colors_constant.dart';

class ForgetPassword2 extends StatelessWidget {
  const ForgetPassword2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/forgetpassword2.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "رمز التحقق",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.006,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  "لقد تم إرسال رمز تحقق برسالة الى الرقم المُدخل الرجاء إدخال الرمز لمتابعة إعادة تعيين كلمة مرور حديدة",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade900,
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
                        return WaitingScreen(
                          screen: ForgetPassword3(),
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
