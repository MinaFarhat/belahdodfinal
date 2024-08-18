import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class WaitingScreen extends StatefulWidget {
  final Widget screen;
  final String text;
  const WaitingScreen({
    required this.screen,
    required this.text,
    super.key,
  });

  @override
  State<WaitingScreen> createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  @override
  void initState() {
    super.initState();
    _checkConnectivityAndNavigate();
  }

  void _setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SharedPreferencesUtils().getisDark() == false
          ? SystemUiOverlayStyle.light.copyWith(
              systemNavigationBarColor: Colors.white,
              systemNavigationBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              systemNavigationBarColor: Colors.grey.shade900,
              systemNavigationBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.grey.shade900,
            ),
    );
  }

  Future<void> _checkConnectivityAndNavigate() async {
    // Adjusted to handle a list of ConnectivityResult
    await Future.delayed(const Duration(seconds: 5));
    final List<ConnectivityResult> results =
        await Connectivity().checkConnectivity();

    if (results.isNotEmpty) {
      final ConnectivityResult result = results.first;

      if (result == ConnectivityResult.none) {
        _showNoInternetDialog();
      } else {
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) => widget.screen,
          ),
        );
      }
    } else {
      // Handle the case where the list is empty (unexpected scenario)
      _showNoInternetDialog();
    }
  }

  void _showNoInternetDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "لا يوجد اتصال بالأنترنت",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          content: Text(
            "رجاءً تحقق من اتصالك بالأنترنت ثم حاول مرة أخرى",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade900,
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
                  color: ColorConstant.mainColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _setSystemUIOverlayStyle();

    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.17,
              ),
              child: Lottie.asset(
                'assets/images/robot.json',
                fit: BoxFit.cover,
                animate: true,
              ),
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 20,
                color: SharedPreferencesUtils().getisDark() == false
                    ? Colors.black
                    : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
