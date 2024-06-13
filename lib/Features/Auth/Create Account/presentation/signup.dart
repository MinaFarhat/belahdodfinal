import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/confirmnumber.dart';
import 'package:belahododfinal/Features/Auth/Login/presentation/login.dart';
import 'package:belahododfinal/Features/Widgets/field_location.dart';
import 'package:belahododfinal/Features/Widgets/field_name.dart';
import 'package:belahododfinal/Features/Widgets/field_phone.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final bool showpass = false;
  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final GlobalKey<FormState> _fullnamekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _phonenumberkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _regionKey = GlobalKey<FormState>();
  final TextEditingController _regionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/signup.png"),
                  fit: BoxFit.cover,
                )),
              ),
              Text(
                "إنشاء حساب",
                style: TextStyle(
                  fontSize: 22,
                  color: ColorConstant.darkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.006,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Text(
                  "أهلا بك في تطبيق بلا حدود للمعرفة والعلم والترفيه",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstant.hintTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Form(
                key: _fullnamekey,
                child: FieldName(
                  controller: _fullnamecontroller,
                  fieldName: "الأسم الثلاثي",
                  typeKey: TextInputType.name,
                  pass: false,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "This field is required";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                key: _passwordkey,
                child: FieldName(
                  controller: _passwordcontroller,
                  fieldName: "كلمة المرور",
                  typeKey: TextInputType.visiblePassword,
                  pass: true,
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return "This field is required";
                    } else if (value.length < 8) {
                      return "The Password should be more than 8 characters";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
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
                      return "This field is required";
                    } else if (value.length < 9) {
                      return "The phone number should be at least 9 digits";
                    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return "This number is invalid";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                key: _regionKey,
                child: FieldLocation(
                  controller: _regionController,
                  validatefield: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field is required";
                    }
                    return null;
                  },
                  validatedropdownbutton: (value) {
                    if (value == null) {
                      return "Please select a city";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  if (_fullnamekey.currentState!.validate() &&
                      _passwordkey.currentState!.validate() &&
                      _phonenumberkey.currentState!.validate() &&
                      _regionKey.currentState!.validate()) {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return const ConfirmNumber();
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
                      "التالي",
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
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return LogIn();
                      }));
                    },
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "لديك بالفعل حساب؟",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.hintTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
