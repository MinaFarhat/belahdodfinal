import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/signup.dart';
import 'package:belahododfinal/Features/Auth/Login/presentation/login.dart';
import 'package:belahododfinal/Features/User/Info/presentation/inof.dart';
import 'package:belahododfinal/Features/User/profile/presentation/Account%20Settings/accountsettings.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/dialog_delete.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BottomPartProfile extends StatelessWidget {
  const BottomPartProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ":الإعدادات العامة",
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.016,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 12,
                offset: const Offset(0, 1.5),
              ),
            ],
          ),
          child: Column(
            children: [
              profileButton(
                context: context,
                color: ColorConstant.mainColor,
                icon: PhosphorIcons.user(PhosphorIconsStyle.regular),
                text: "إعدادات الحساب",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const AccountSettings();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              profileButton(
                context: context,
                color: const Color(0xFFD90E94),
                icon: PhosphorIcons.detective(PhosphorIconsStyle.regular),
                text: "تغيير كلمة المرور",
                onTap: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              profileButton(
                context: context,
                color: const Color(0xFFFB7A12),
                icon: PhosphorIcons.signpost(PhosphorIconsStyle.regular),
                text: "تسجيل الخروج",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return DeleteDialog(
                        title: "تسجيل الخروج",
                        subTitle: "هل تريد بالتأكيد تسجيل الخروج؟",
                        button1: "إلغاء",
                        button2: "خروج",
                        ontapButton1: () {
                          Navigator.of(context).pop();
                        },
                        ontapButton2: () {
                          SharedPreferencesUtils().removeToken();
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) {
                                return LogIn();
                              },
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              profileButton(
                context: context,
                color: const Color(0xFFDB0909),
                icon: PhosphorIcons.userMinus(PhosphorIconsStyle.regular),
                text: "حذف الحساب",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) {
                      return DeleteDialog(
                        title: "حذف الحساب",
                        subTitle: "هل تريد بالتأكيد حذف الحساب؟",
                        button1: "إلغاء",
                        button2: "حذف",
                        ontapButton1: () {
                          Navigator.of(context).pop();
                        },
                        ontapButton2: () {
                          SharedPreferencesUtils().removeToken();
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) {
                                return const Signup();
                              },
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.018,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ":التواصل والدعم",
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.014,
        ),
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const Information();
                },
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.055,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFDB0909),
            ),
            child: const Center(
              child: Text(
                "تواصل معنا",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Padding profileButton({
    required String text,
    required BuildContext context,
    required PhosphorIconData icon,
    required Color color,
    required void Function() onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: InkWell(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                PhosphorIcons.caretLeft(PhosphorIconsStyle.regular),
                color: color,
                size: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.012,
                  ),
                  Icon(
                    icon,
                    color: color,
                    size: 27,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
