// ignore_for_file: use_build_context_synchronously

import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/cubit/section_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

// ignore: must_be_immutable
class Item extends StatefulWidget {
  final String image;
  final int index;
  final int productID;
  bool isFavorite;
  final int sectionId;
  Item({
    required this.image,
    required this.index,
    required this.productID,
    required this.isFavorite,
    required this.sectionId,
    super.key,
  });

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        overlayColor: WidgetStateProperty.all(Colors.transparent),
        onTap: () {
          if (widget.sectionId == 1) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsBook(
                      productID: widget.productID,
                    ),
                  ),
                )
                .then((_) => context.read<SectionCubit>().sections());
          } else if (widget.sectionId == 2) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsGame(
                      productID: widget.productID,
                    ),
                  ),
                )
                .then((_) => context.read<SectionCubit>().sections());
          } else if (widget.sectionId == 3) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsStationery(
                      productID: widget.productID,
                    ),
                  ),
                )
                .then((_) => context.read<SectionCubit>().sections());
          } else if (widget.sectionId == 4) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsQurans(
                      productID: widget.productID,
                    ),
                  ),
                )
                .then((_) => context.read<SectionCubit>().sections());
          } else if (widget.sectionId == 5 || widget.sectionId > 5) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsBase(
                      productID: widget.productID,
                    ),
                  ),
                )
                .then((_) => context.read<SectionCubit>().sections());
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
                imageUrl: widget.image,
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
                errorWidget: (context, url, error) => Stack(
                  children: [
                    Container(
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.160,
              left: MediaQuery.of(context).size.width * 0.29,
              child: InkWell(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                onTap: () {
                  if (widget.isFavorite == false) {
                    setState(() {
                      widget.isFavorite = true;
                    });
                    Fluttertoast.showToast(
                      msg: "تم إضافة المنتج الى القائمة المفضلة",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: ColorConstant.mainColor,
                    );

                    context
                        .read<AddtofavoriteCubit>()
                        .addtofavorites(widget.productID);
                  } else {
                    setState(() {
                      widget.isFavorite = false;
                    });
                    Fluttertoast.showToast(
                      msg: "تم إزالة المنتج من القائمة المفضلة",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: ColorConstant.mainColor,
                    );

                    context
                        .read<AddtofavoriteCubit>()
                        .addtofavorites(widget.productID);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade500
                            : Colors.grey.shade800,
                        offset: const Offset(0, 2.5),
                        blurRadius: 0.9,
                      ),
                      BoxShadow(
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade400
                            : Colors.grey.shade700,
                        offset: const Offset(0, -0.1),
                        blurRadius: 0.9,
                      ),
                    ],
                  ),
                  child: widget.isFavorite == false
                      ? CircleAvatar(
                          radius: 18,
                          backgroundColor:
                              SharedPreferencesUtils().getisDark() == false
                                  ? Colors.white
                                  : Colors.grey.shade900,
                          child: Center(
                            child: Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.regular),
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
                              size: 25,
                            ),
                          ),
                        )
                      : CircleAvatar(
                          radius: 18,
                          backgroundColor:
                              SharedPreferencesUtils().getisDark() == false
                                  ? Colors.white
                                  : Colors.grey.shade900,
                          child: Center(
                            child: Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.fill),
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
                              size: 25,
                            ),
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
