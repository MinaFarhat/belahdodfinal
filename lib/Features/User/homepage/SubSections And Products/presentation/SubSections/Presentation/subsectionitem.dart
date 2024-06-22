import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubSectionItem extends StatelessWidget {
  SubSectionItem({
    required this.name,
    required this.sectionId,
    super.key,
  });
  String name;
  int sectionId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstant.darkColor,
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(18),
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          Positioned(
            child: Center(
              child: Text(
                name,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                maxLines: 10,
                style: TextStyle(
                  fontSize: 16,
                  color: ColorConstant.darkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
