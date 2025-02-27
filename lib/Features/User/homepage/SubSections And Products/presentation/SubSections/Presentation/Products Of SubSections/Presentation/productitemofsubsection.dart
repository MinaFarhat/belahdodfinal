// ignore_for_file: use_build_context_synchronously

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Get Products of SubSection Cubit/getproductsofsubsection_cubit.dart';

// ignore: must_be_immutable
class ProductItemOfSubSection extends StatelessWidget {
  ProductItemOfSubSection({
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
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsBook(
                    productID: productId,
                  ),
                ),
              )
              .then((_) => context
                  .read<GetproductsofsubsectionCubit>()
                  .getProductsofSubSection(subSectionId));
        } else if (sectionId == 2) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsGame(
                    productID: productId,
                  ),
                ),
              )
              .then((_) => context
                  .read<GetproductsofsubsectionCubit>()
                  .getProductsofSubSection(subSectionId));
        } else if (sectionId == 3) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsStationery(
                    productID: productId,
                  ),
                ),
              )
              .then((_) => context
                  .read<GetproductsofsubsectionCubit>()
                  .getProductsofSubSection(subSectionId));
        } else if (sectionId == 4) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsQurans(
                    productID: productId,
                  ),
                ),
              )
              .then((_) => context
                  .read<GetproductsofsubsectionCubit>()
                  .getProductsofSubSection(subSectionId));
        } else if (sectionId == 5 || sectionId > 5) {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => DetailsBase(
                    productID: productId,
                  ),
                ),
              )
              .then((_) => context
                  .read<GetproductsofsubsectionCubit>()
                  .getProductsofSubSection(subSectionId));
        }
      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: CachedNetworkImage(
              imageUrl: image,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
                  color: ColorConstant.mainColor,
                ),
              ),
              errorWidget: (context, url, error) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/logo.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
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
