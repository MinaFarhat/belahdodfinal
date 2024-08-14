import 'package:belahododfinal/Core/api/end_points.dart';
import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/DisLike%20Cubit/dis_like_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Like%20Cubit/like_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/QR%20Generate/qrgenerate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Reaction%20Cubit/reaction_state.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Reaction%20Cubit/reaction_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../favorite/Manager/Add To Favorites Cubit/addtofavorite_cubit.dart';

// ignore: must_be_immutable
class TopPartGame extends StatelessWidget {
  const TopPartGame({
    required this.photos,
    required this.productId,
    required this.barcode,
    required this.isFavorite,
    required this.isLike,
    required this.isDislike,
    required this.likeCount,
    super.key,
  });
  final List<String> photos;
  final int productId;
  final String barcode;
  final bool isFavorite;
  final bool isLike;
  final bool isDislike;
  final int likeCount;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReactionCubit()
        ..initialize(
          isFavorite: isFavorite,
          isLike: isLike,
          isDislike: isDislike,
          likeCount: likeCount,
        ),
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
                  String imageUrl = '${EndPoints.imageUrl}$i';
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
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
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.white.withOpacity(0.8)
                          : Colors.grey.shade900.withOpacity(0.8),
                    ),
                    child: Center(
                      child: Icon(
                        PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                        size: 28,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
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
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.white.withOpacity(0.8)
                          : Colors.grey.shade900.withOpacity(0.8),
                    ),
                    child: Center(
                      child: state.isFavorite == false
                          ? Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.regular),
                              size: 28,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
                            )
                          : Icon(
                              PhosphorIcons.heart(PhosphorIconsStyle.fill),
                              size: 28,
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? ColorConstant.mainColor
                                      : ColorConstant.shadowColor,
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return QRGenerate(barcode: barcode);
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.white.withOpacity(0.8)
                          : Colors.grey.shade900.withOpacity(0.8),
                    ),
                    child: Center(
                      child: Icon(
                        PhosphorIcons.qrCode(PhosphorIconsStyle.regular),
                        size: 28,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? Colors.grey.shade900
                            : Colors.white,
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
                    color: SharedPreferencesUtils().getisDark() == false
                        ? Colors.white
                        : Colors.grey.shade900,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: const Offset(0, 1.5),
                        blurRadius: 0.5,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade700,
                        offset: const Offset(0, -0.2),
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.read<ReactionCubit>().toggleDislike();
                            context.read<DisLikeCubit>().disLike(productId);
                          },
                          child: Icon(
                            state.isDislike == false
                                ? PhosphorIcons.thumbsDown(
                                    PhosphorIconsStyle.regular)
                                : PhosphorIcons.thumbsDown(
                                    PhosphorIconsStyle.fill),
                            size: 30,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.deepOrange
                                : Colors.orangeAccent.shade400,
                          ),
                        ),
                      ),
                      Text(
                        '${state.likeCount}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            context.read<ReactionCubit>().toggleLike();
                            if (state.isLike == false) {
                              Fluttertoast.showToast(
                                msg: "تم تسجيل اعجابك",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: ColorConstant.mainColor,
                              );
                              context.read<LikeCubit>().like(productId);
                            } else {
                              Fluttertoast.showToast(
                                msg: "تم إزالة تسجيل اعجابك",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.red,
                              );
                              context.read<LikeCubit>().like(productId);
                            }
                          },
                          child: Icon(
                            state.isLike == false
                                ? PhosphorIcons.thumbsUp(
                                    PhosphorIconsStyle.regular)
                                : PhosphorIcons.thumbsUp(
                                    PhosphorIconsStyle.fill),
                            size: 30,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? ColorConstant.mainColor
                                : ColorConstant.shadowColor,
                          ),
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
