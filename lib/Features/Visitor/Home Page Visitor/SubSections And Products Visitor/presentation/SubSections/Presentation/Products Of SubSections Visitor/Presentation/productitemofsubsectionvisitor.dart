import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_base.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_book.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_game.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_qurans.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/details_stationery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItemOfSubSectionVisitor extends StatelessWidget {
  ProductItemOfSubSectionVisitor({
    required this.image,
    required this.productId,
    required this.isFavorite,
    required this.subSectionId,
    required this.sectionId,
    super.key,
  });
  String image;
  int productId;
  bool isFavorite;
  int subSectionId;
  int sectionId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        if (sectionId == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBookVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsGameVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 3) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsStationeryVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 4) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsQuransVisitor(
                productID: productId,
              ),
            ),
          );
        } else if (sectionId == 5 || sectionId > 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsBaseVisitor(
                productID: productId,
              ),
            ),
          );
        }
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              image: DecorationImage(
                image: CachedNetworkImageProvider(image),
                fit: BoxFit.cover,
                onError: (exception, stackTrace) {
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                    ],
                  );
                },
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
