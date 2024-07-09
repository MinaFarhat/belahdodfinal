import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/splashscreen.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/field_name.dart';
import 'package:flutter/material.dart';

class EnterNewPassword extends StatelessWidget {
  EnterNewPassword({super.key});
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _newPasswordKey = GlobalKey();
  final GlobalKey<FormState> _confirmNewPasswordKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/changepassword2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
              ),
              Text(
                "إعادة تعيين كلمة مرور جديدة",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
                child: Text(
                  "تم التحقق أدخل كلمة مرور جديدة ملاحظة ستصبح كلمة المرور هذه الكلمة الرسمية للدخول الى هذا الحساب.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.grey.shade900
                        : Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Form(
                key: _newPasswordKey,
                child: FieldName(
                  controller: _newPasswordController,
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
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Form(
                key: _confirmNewPasswordKey,
                child: FieldName(
                  controller: _confirmNewPasswordController,
                  fieldName: "تأكيد كلمة المرور الجديدة",
                  typeKey: TextInputType.visiblePassword,
                  pass: true,
                  validate: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "رجاءً أدخل كلمة المرور مرة أخرى";
                    }
                    if (value != _newPasswordController.text) {
                      return "لايوجد تطابق بين كلمة المرور التي أدخلتها حالياً والتي أدخلتها سابقاً";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  if (_newPasswordKey.currentState!.validate() &&
                      _confirmNewPasswordKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return SplashScreen();
                        },
                      ),
                    );
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.055,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorConstant.mainColor,
                  ),
                  child: const Center(
                    child: Text(
                      "تأكيد",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
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
