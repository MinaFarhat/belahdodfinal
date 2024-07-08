import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Orders/main%20orders/presentation/order.dart';
import 'package:belahododfinal/Features/User/Points/Presentation/points.dart';
import 'package:belahododfinal/Features/User/profile/presentation/Language/chooselanguage.dart';
import 'package:belahododfinal/main.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class MiddlePartProfile extends StatefulWidget {
  const MiddlePartProfile({
    required this.numberOfOrder,
    required this.numOfPoints,
    super.key,
  });
  final int numberOfOrder;
  final int numOfPoints;

  @override
  State<MiddlePartProfile> createState() => _MiddlePartProfileState();
}

class _MiddlePartProfileState extends State<MiddlePartProfile> {
  bool isDark = SharedPreferencesUtils().getisDark()!;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const ChooseLanguage();
                },
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xFF10D417),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  children: [
                    Icon(
                      PhosphorIcons.translate(PhosphorIconsStyle.bold),
                      color: Colors.grey.shade900,
                      size: 28,
                    ),
                    const Text(
                      "اللغة العربية",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            setState(() {
              isDark = !isDark;
              SharedPreferencesUtils().setDark(isDark);
            });

            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return const MyApp();
                },
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: SharedPreferencesUtils().getisDark() == false
                  ? const Color(0xFFE0E40E)
                  : Colors.grey.shade900,
            ),
            child: Center(
              child: SharedPreferencesUtils().getisDark() == false
                  ? Icon(
                      PhosphorIcons.sun(PhosphorIconsStyle.regular),
                      color: Colors.white,
                      size: 38,
                    )
                  : Icon(
                      PhosphorIcons.moon(PhosphorIconsStyle.regular),
                      color: Colors.white,
                      size: 38,
                    ),
            ),
          ),
        ),
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const PointsScreen();
                },
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient: const LinearGradient(
                begin: Alignment(-1, 1),
                end: Alignment(1, -1),
                transform: GradientRotation(60),
                tileMode: TileMode.decal,
                colors: [
                  Color(0xFFD90E94),
                  Color(0xFFFB7A12),
                ],
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  children: [
                    Text(
                      "النقاط",
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.numOfPoints.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        InkWell(
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const Orders();
                },
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: ColorConstant.mainColor,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Column(
                  children: [
                    Text(
                      "الطلبات",
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.numberOfOrder.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
