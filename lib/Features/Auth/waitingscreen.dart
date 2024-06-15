import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WaitingScreen extends StatelessWidget {
  final Widget screen;
  const WaitingScreen({
    required this.screen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            const Text(
              "...جارٍ التحقق",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
