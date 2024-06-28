import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItemVisitor extends StatelessWidget {
  String image;
  bool isFavorite;
  int sectionId;

  ProductItemVisitor(
      {required this.image,
      required this.isFavorite,
      required this.sectionId,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        if (sectionId == 1) {
        } else if (sectionId == 2) {
        } else if (sectionId == 3) {
        } else if (sectionId == 4) {
        } else if (sectionId == 5 || sectionId > 5) {}
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned(
          //   top: MediaQuery.of(context).size.height * 0.1,
          //   left: MediaQuery.of(context).size.width * 0.12,
          //   child: InkWell(
          //     overlayColor: WidgetStateProperty.all(Colors.transparent),
          //     onTap: () {},
          //     child: Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.shade500,
          //             offset: const Offset(0, 2.5),
          //             blurRadius: 0.9,
          //           ),
          //           BoxShadow(
          //             color: Colors.grey.shade400,
          //             offset: const Offset(0, -0.1),
          //             blurRadius: 0.9,
          //           ),
          //         ],
          //       ),
          //       child: CircleAvatar(
          //         radius: 18,
          //         backgroundColor: Colors.white,
          //         child: Center(
          //           child: isFavorite == false
          //               ? Icon(
          //                   PhosphorIcons.heart(PhosphorIconsStyle.regular),
          //                   color: ColorConstant.mainColor,
          //                   size: 25,
          //                 )
          //               : Icon(
          //                   PhosphorIcons.heart(PhosphorIconsStyle.fill),
          //                   color: ColorConstant.mainColor,
          //                   size: 25,
          //                 ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
