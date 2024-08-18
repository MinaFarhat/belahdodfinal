import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
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
    _navigateAfterDelay(context);

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
              child: Text(
                "بلا حدود",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.black
                      : Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: MediaQuery.of(context).size.width * 0.45,
              bottom: MediaQuery.of(context).size.height * 0.05,
              child: CircularProgressIndicator(
                color: SharedPreferencesUtils().getisDark() == false
                    ? ColorConstant.mainColor
                    : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateAfterDelay(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 5));

    // ConnectivityResult, not List<ConnectivityResult>
    final List<ConnectivityResult> results =
        await Connectivity().checkConnectivity();

    if (results.isNotEmpty) {
      final ConnectivityResult result = results.first;

      if (result == ConnectivityResult.none) {
        // ignore: use_build_context_synchronously
        _showNoInternetDialog(context);
      } else {
        await _preferencesUtils.init();
        final token = _preferencesUtils.getToken();

        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) {
              if (token != null) {
                return const Mynavbar();
              } else {
                return const Mynavbarvisitor();
              }
            },
          ),
        );
      }
    } else {
      // ignore: use_build_context_synchronously
      _showNoInternetDialog(context);
    }
  }

  void _showNoInternetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: SharedPreferencesUtils().getisDark() == false
              ? Colors.white
              : Colors.grey.shade900,
          title: Text(
            "لا يوجد اتصال بالأنترنت",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: SharedPreferencesUtils().getisDark() == false
                  ? Colors.black
                  : Colors.white,
            ),
          ),
          content: Text(
            "رجاءً تحقق من اتصالك بالأنترنت ثم حاول مرة أخرى",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: SharedPreferencesUtils().getisDark() == false
                  ? Colors.grey.shade900
                  : Colors.grey.shade300,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "موافق",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: SharedPreferencesUtils().getisDark() == false
                      ? ColorConstant.mainColor
                      : ColorConstant.shadowColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
