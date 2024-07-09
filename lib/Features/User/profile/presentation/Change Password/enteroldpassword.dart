import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/waitingscreen.dart';
import 'package:belahododfinal/Features/User/profile/presentation/Change%20Password/enternewpassword.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/field_name.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EnterOldPassword extends StatelessWidget {
  EnterOldPassword({super.key});
  final TextEditingController _oldPasswordController = TextEditingController();
  final GlobalKey<FormState> _oldPasswordKey = GlobalKey();
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
                padding: const EdgeInsets.only(right: 16, top: 12, bottom: 8),
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
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.32,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/changepassword.png"),
                    fit: BoxFit.cover,
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
                padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
                child: Text(
                  "أدخل كلمة المرور القديمة او اي أخر كلمة مرور تتذكرها",
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
                key: _oldPasswordKey,
                child: FieldName(
                  controller: _oldPasswordController,
                  fieldName: "كلمة المرور القديمة",
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
                height: MediaQuery.of(context).size.height * 0.17,
              ),
              InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  if (_oldPasswordKey.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return WaitingScreen(
                            screen: EnterNewPassword(),
                            text: "جارٍ التحقق",
                          );
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
                      "تحقق",
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
