import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

class ProfileVisitor extends StatelessWidget {
  const ProfileVisitor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/noauthprofile.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InkWell(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              onTap: () {
                // Handle button tap
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      ColorConstant.mainColor,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(2),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "إنشاء حساب",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
