import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/cubit/createaccount_cubit.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/confirmnumber.dart';
import 'package:belahododfinal/Features/Auth/Login/presentation/login.dart';
import 'package:belahododfinal/Features/Widgets/field_location.dart';
import 'package:belahododfinal/Features/Widgets/field_name.dart';
import 'package:belahododfinal/Features/Widgets/field_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final bool showpass = false;
  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final GlobalKey<FormState> _fullnamekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _confirmpasswordkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _phonenumberkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _regionKey = GlobalKey<FormState>();
  final TextEditingController _regionController = TextEditingController();
  final String role = "زبون";
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
                      return "هذا الحقل مطلوب";
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
                  fieldName: "تأكيد كلمة المرور",
                  typeKey: TextInputType.visiblePassword,
                  pass: true,
                  validate: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "رجاءً أدخل كلمة المرور مرة أخرى";
                    }
                    if (value != _passwordcontroller.text) {
                      return "لايوجد تطابق بين كلمة المرور التي أدخلتها حالياً والتي أدخلتها سابقاً";
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
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Form(
                key: _regionKey,
                child: FieldLocation(
                  controller: _regionController,
                  validatefield: (value) {
                    if (value == null || value.isEmpty) {
                      return "هذا الحقل مطلوب";
                    }
                    return null;
                  },
                  validatedropdownbutton: (value) {
                    if (value == null) {
                      return "رجاءً اختر مدينة";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              BlocConsumer<CreateaccountCubit, CreateaccountState>(
                listener: (context, state) {
                  state.whenOrNull(
                    error: (NetworkExceptions networkExceptions) =>
                        Fluttertoast.showToast(
                      msg: NetworkExceptions.getErrorMessage(
                        networkExceptions,
                      ),
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.red,
                    ),
                    success: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const ConfirmNumber();
                          },
                        ),
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          if (_fullnamekey.currentState!.validate() &&
                              _passwordkey.currentState!.validate() &&
                              _confirmpasswordkey.currentState!.validate() &&
                              _phonenumberkey.currentState!.validate() &&
                              _regionKey.currentState!.validate()) {
                            context
                                .read<CreateaccountCubit>()
                                .emitCreateAccount(
                                  name: _fullnamecontroller.text,
                                  password: _passwordcontroller.text,
                                  confirmPassword:
                                      _confirmpasswordcontroller.text,
                                  phoneNumber: _phonenumbercontroller.text,
                                  city: FieldLocation.value.toString(),
                                  address: _regionController.text,
                                  role: role,
                                );
                            print(_fullnamecontroller.text);
                            print(_passwordcontroller.text);
                            print(_phonenumbercontroller.text);
                            print(_confirmpasswordcontroller.text);
                            print(FieldLocation.value);
                            print(_regionController.text);
                            print(role);
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
                      );
                    },
                    initial: () {
                      return InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          if (_fullnamekey.currentState!.validate() &&
                              _passwordkey.currentState!.validate() &&
                              _confirmpasswordkey.currentState!.validate() &&
                              _phonenumberkey.currentState!.validate() &&
                              _regionKey.currentState!.validate()) {
                            context
                                .read<CreateaccountCubit>()
                                .emitCreateAccount(
                                  name: _fullnamecontroller.text,
                                  password: _passwordcontroller.text,
                                  confirmPassword:
                                      _confirmpasswordcontroller.text,
                                  phoneNumber: _phonenumbercontroller.text,
                                  city: FieldLocation.value.toString(),
                                  address: _regionController.text,
                                  role: role,
                                );
                            print(_fullnamecontroller.text);
                            print(_passwordcontroller.text);
                            print(_phonenumbercontroller.text);
                            print(_confirmpasswordcontroller.text);
                            print(FieldLocation.value);
                            print(_regionController.text);
                            print(role);
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
                      );
                    },
                    loading: () {
                      return CircularProgressIndicator(
                        color: ColorConstant.mainColor,
                      );
                    },
                  );
                },
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
