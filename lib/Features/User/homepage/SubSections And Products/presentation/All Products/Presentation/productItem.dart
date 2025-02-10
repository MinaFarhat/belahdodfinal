// ignore_for_file: use_build_context_synchronously

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/All%20Products/Get%20Products%20Main%20Section%20Cubit/get_products_main_section_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ProductItem extends StatelessWidget {
  String image;
  int sectionId;
  int productId;
  ProductItem({
    required this.image,
    required this.sectionId,
    required this.productId,
    super.key,
  });

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
                  .read<GetProductsMainSectionCubit>()
                  .getProductsMainSection(sectionId));
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
                  .read<GetProductsMainSectionCubit>()
                  .getProductsMainSection(sectionId));
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
                  .read<GetProductsMainSectionCubit>()
                  .getProductsMainSection(sectionId));
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
                  .read<GetProductsMainSectionCubit>()
                  .getProductsMainSection(sectionId));
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
                  .read<GetProductsMainSectionCubit>()
                  .getProductsMainSection(sectionId));
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: CachedNetworkImage(
          imageUrl: image,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
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
    );
  }
}
