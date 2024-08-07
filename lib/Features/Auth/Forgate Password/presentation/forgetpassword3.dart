import 'package:belahododfinal/Features/Auth/waitingscreen.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/field_name.dart';
import 'package:flutter/material.dart';

import '../../../../Core/constant/colors_constant.dart';
import '../../Login/presentation/login.dart';

class ForgetPassword3 extends StatelessWidget {
  ForgetPassword3({super.key});

  final TextEditingController _newpasswordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final GlobalKey<FormState> _newpasswordkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _confirmpasswordkey = GlobalKey<FormState>();

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
                      image: AssetImage("assets/images/forgetpassword3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                "إعادة تعيين كلمة مرور جديدة",
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
                  "يجب عليك إعادة إدخال كلمة مرور جديدة والمتابعة لتسجيل الدخول",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Form(
                key: _newpasswordkey,
                child: FieldName(
                  controller: _newpasswordcontroller,
                  fieldName: "كلمة المرور الجديدة",
                  typeKey: TextInputType.visiblePassword,
                  pass: true,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل مطلوب";
                    } else if (value.length < 8) {
                      return "كلمة المرور يجب ان تكون أكثر من 8 أحرف";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                key: _confirmpasswordkey,
                child: FieldName(
                  controller: _confirmpasswordcontroller,
                  fieldName: "تأكيد كلمة المرور الجديدة",
                  typeKey: TextInputType.visiblePassword,
                  pass: true,
                  validate: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "رجاءً أدخل كلمة المرور مرة أخرى";
                    }
                    if (value != _newpasswordcontroller.text) {
                      return "لايوجد تطابق بين كلمة المرور التي أدخلتها حالياً والتي أدخلتها سابقاً";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              GestureDetector(
                onTap: () {
                  if (_newpasswordkey.currentState!.validate() &&
                      _confirmpasswordkey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return WaitingScreen(
                            screen: LogIn(),
                            text: "...جارٍ حفظ المعلومات",
                          );
                        },
                      ),
                    );
                  }
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
                      "تأكيد",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
