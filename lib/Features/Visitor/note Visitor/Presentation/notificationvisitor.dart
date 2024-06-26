import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';

class NotificationsPageVisitor extends StatelessWidget {
  const NotificationsPageVisitor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          name: "الإشعارات",
          leading: Container(),
          action: const [
            // Padding(
            //   padding: const EdgeInsets.only(right: 16),
            //   child: GestureDetector(
            //     onTap: () {},
            //     child: Icon(
            //       PhosphorIcons.bellSlash(PhosphorIconsStyle.regular),
            //       size: 26,
            //       color: ColorConstant.mainColor,
            //     ),
            //   ),
            // ),
          ],
          isBottom: true,
        ),
        body: const Image(
          image: AssetImage("assets/images/noauth.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
