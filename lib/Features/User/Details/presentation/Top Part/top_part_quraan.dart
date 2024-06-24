import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Reaction%20Cubit/reaction_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Reaction%20Cubit/reaction_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../../favorite/Manager/Add To Favorites Cubit/addtofavorite_cubit.dart';

// ignore: must_be_immutable
class TopPartQuraan extends StatelessWidget {
  TopPartQuraan({
    required this.photos,
    required this.productId,
    super.key,
  });
  List<String> photos;
  int productId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReactionCubit(),
      child: BlocBuilder<ReactionCubit, ReactionState>(
        builder: (context, state) {
          return Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  initialPage: 0,
                  height: MediaQuery.of(context).size.height * 0.55,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    context.read<ReactionCubit>().updateIndex(index);
                  },
                ),
                items: photos.map((i) {
                  String imageUrl = 'http://10.0.2.2:8000$i';
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(imageUrl),
                            fit: BoxFit.cover,
                            onError: (exception, stackTrace) {
                              Stack(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/logo.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
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
                      );
                    },
                  );
                }).toList(),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: Center(
                      child: Icon(
                        PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                        size: 28,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 16,
                left: MediaQuery.of(context).size.width * 0.42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: photos.map((url) {
                    int index = photos.indexOf(url);
                    return Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: state.currentIndex == index
                            ? ColorConstant.mainColor
                            : Colors.black,
                      ),
                    );
                  }).toList(),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {
                    if (state.isFavorite == false) {
                      context.read<ReactionCubit>().toggleFavorite();
                      Fluttertoast.showToast(
                        msg: "تم إضافة المنتج الى القائمة المفضلة",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: ColorConstant.mainColor,
                      );

                      context
                          .read<AddtofavoriteCubit>()
                          .addtofavorites(productId);
                    } else {
                      context.read<ReactionCubit>().toggleFavorite();
                      Fluttertoast.showToast(
                        msg: "تم إزالة المنتج من القائمة المفضلة",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: ColorConstant.mainColor,
                      );

                      context
                          .read<AddtofavoriteCubit>()
                          .addtofavorites(productId);
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: Center(
                      child: state.isFavorite == false
                          ? Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.regular),
                              size: 28,
                              color: ColorConstant.mainColor,
                            )
                          : Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.fill),
                              size: 28,
                              color: ColorConstant.mainColor,
                            ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: InkWell(
                  overlayColor: WidgetStateProperty.all(Colors.transparent),
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: Center(
                      child: Icon(
                        PhosphorIcons.qrCode(PhosphorIconsStyle.regular),
                        size: 28,
                        color: ColorConstant.darkColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                left: MediaQuery.of(context).size.width * 0.329,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.045,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(0, 3),
                        blurRadius: 0.9,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(0, -0.2),
                        blurRadius: 0.9,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.read<ReactionCubit>().dislike();
                        },
                        child: state.isDislike == false
                            ? Icon(
                                PhosphorIcons.thumbsDown(
                                    PhosphorIconsStyle.regular),
                                size: 28,
                                color: Colors.deepOrange,
                              )
                            : Icon(
                                PhosphorIcons.thumbsDown(
                                    PhosphorIconsStyle.fill),
                                size: 28,
                                color: Colors.deepOrange,
                              ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      Text(
                        state.amountOfReactions.toString(),
                        style: TextStyle(
                          color: ColorConstant.darkColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          context.read<ReactionCubit>().like();
                        },
                        child: state.isLike == false
                            ? Icon(
                                PhosphorIcons.thumbsUp(
                                    PhosphorIconsStyle.regular),
                                size: 28,
                                color: ColorConstant.mainColor,
                              )
                            : Icon(
                                PhosphorIcons.thumbsUp(PhosphorIconsStyle.fill),
                                size: 28,
                                color: ColorConstant.mainColor,
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
