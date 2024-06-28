import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Newtitlevisitor extends StatelessWidget {
  String image;
  String title;
   Newtitlevisitor({required this.image,required this.title,super.key});

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(right: 12, left: 12, top: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.47,
            child: Text(
              title,
              overflow: TextOverflow.clip,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ColorConstant.darkColor,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.015,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}