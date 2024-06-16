import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/signup.dart';
import 'package:belahododfinal/Features/Auth/Forgate%20Password/presentation/forgetpassword1.dart';
import 'package:belahododfinal/Features/Auth/Login/cubit/login_cubit.dart';
import 'package:belahododfinal/Features/Auth/waitingscreen.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:belahododfinal/Features/Widgets/field_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../../Core/constant/colors_constant.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  final TextEditingController _fullnamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final GlobalKey<FormState> _fullnamekey = GlobalKey<FormState>();
  final GlobalKey<FormState> _passwordkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/login.png"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                "تسجيل الدخول",
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
                  "أهلا بك مجدداً في تطبيق بلا حدود",
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorConstant.hintTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
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
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ForgetPassword1();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "هل نسيت كلمة المرور؟",
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorConstant.darkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              BlocConsumer<LoginCubit, LoginState>(
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
                    success: (loginEntity) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return const WaitingScreen(
                              screen: Mynavbar(),
                              text: "...جارٍ التحقق",
                            );
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
                              _passwordkey.currentState!.validate()) {
                            context.read<LoginCubit>().emitLogin(
                                  _fullnamecontroller.text,
                                  _passwordcontroller.text,
                                );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.065,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: ColorConstant.mainColor,
                          ),
                          child: const Center(
                            child: Text(
                              "تسجيل الدخول",
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
                              _passwordkey.currentState!.validate()) {
                            context.read<LoginCubit>().emitLogin(
                                  _fullnamecontroller.text,
                                  _passwordcontroller.text,
                                );
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.height * 0.065,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: ColorConstant.mainColor,
                          ),
                          child: const Center(
                            child: Text(
                              "تسجيل الدخول",
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
                        return const Signup();
                      }));
                    },
                    child: Text(
                      "إنشاء حساب",
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
                    "ليس لديك حساب بالفعل؟",
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
