import 'dart:async';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
import 'package:belahododfinal/Features/Visitor/navbarvisitor.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SharedPreferencesUtils _preferencesUtils = SharedPreferencesUtils();

  @override
  Widget build(BuildContext context) {
    // Delayed navigation logic
    Future.delayed(const Duration(seconds: 5), () async {
      await _preferencesUtils.init(); // Initialize SharedPreferences
      final token = _preferencesUtils.getToken(); // Get stored token

      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) {
            if (token != null) {
              return const Mynavbar(); // User logged in
            } else {
              return const Mynavbarvisitor(); // Visitor or not logged in
            }
          },
        ),
      );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.32,
              bottom: MediaQuery.of(context).size.height * 0.16,
              child: const Text(
                "بلا حدود",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.45,
              bottom: MediaQuery.of(context).size.height * 0.05,
              child: CircularProgressIndicator(
                color: ColorConstant.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
