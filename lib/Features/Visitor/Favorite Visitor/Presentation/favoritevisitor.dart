import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class FavoriteVisitor extends StatelessWidget {
  const FavoriteVisitor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          leading: Container(),
          // GestureDetector(
          //   onTap: () {},
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 16),
          //     child: Icon(
          //       PhosphorIcons.magnifyingGlass(PhosphorIconsStyle.regular),
          //       color: ColorConstant.mainColor,
          //       size: 26,
          //     ),
          //   ),
          // ),
          action: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                  size: 26,
                  color: ColorConstant.darkColor,
                ),
              ),
            ),
          ],
          name: "القائمة المفضلة",
          isBottom: false,
        ),
        body: const Image(
          image: AssetImage("assets/images/noauth.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
