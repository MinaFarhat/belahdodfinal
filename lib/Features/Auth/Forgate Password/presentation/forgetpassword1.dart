import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Auth/Forgate%20Password/presentation/forgetpassword2.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/field_phone.dart';
import 'package:flutter/material.dart';

class ForgetPassword1 extends StatelessWidget {
  ForgetPassword1({super.key});

  final TextEditingController _phonenumbercontroller = TextEditingController();
  final GlobalKey<FormState> _phonenumberkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: ColorConstant.darkColor,
                        size: 30,
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
                    image: AssetImage("assets/images/forgetpassword1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "إعادة تعيين كلمة مرور",
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
                  "لإعادة تعيين كلمة مرور جديدة بحال نسيان كلمة المرور الخاصة بك عليك إعادة إدخال رقم الهاتف الخاص بك",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Form(
                key: _phonenumberkey,
                child: FieldPhone(
                  phonenumbercontroller: _phonenumbercontroller,
                  fieldName: "رقم الهاتف",
                  typeKey: TextInputType.phone,
                  pass: false,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "هذا الحقل مطلوب";
                    } else if (value.length < 9) {
                      return "رقم الهاتف يجب ان يكون على الأقل 9 أرقام";
                    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return "هذا الرقم غير صالح";
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
                  if (_phonenumberkey.currentState!.validate()) {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const ForgetPassword2();
                    }));
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
                      "إرسال",
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
