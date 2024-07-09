import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

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

  @override
  Widget build(BuildContext context) {
    _setSystemUIOverlayStyle();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => widget.screen,
          ),
        );
      },
    );
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
